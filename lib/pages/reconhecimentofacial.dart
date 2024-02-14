import 'dart:async';

import 'package:first_app/pages/ola.dart';
import 'package:first_app/pages/piada.dart';
import 'package:first_app/pages/trocando_pagina.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Reconhecimento extends StatefulWidget {
  const Reconhecimento({super.key});

  @override
  State<Reconhecimento> createState() => _ReconhecimentoState();
}

class _ReconhecimentoState extends State<Reconhecimento> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewSettings settings = InAppWebViewSettings(
      isInspectable: kDebugMode,
      mediaPlaybackRequiresUserGesture: false,
      allowsInlineMediaPlayback: true,
      iframeAllow: "camera; microphone",
      iframeAllowFullscreen: true);

  PullToRefreshController? pullToRefreshController;
  String url = "";
  double progress = 0;
  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();

    pullToRefreshController = kIsWeb
        ? null
        : PullToRefreshController(
            settings: PullToRefreshSettings(
              color: Colors.blue,
            ),
            onRefresh: () async {
              if (defaultTargetPlatform == TargetPlatform.android) {
                webViewController?.reload();
              } else if (defaultTargetPlatform == TargetPlatform.iOS) {
                webViewController?.loadUrl(
                    urlRequest:
                        URLRequest(url: await webViewController?.getUrl()));
              }
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("IHC - JAMES")),
        body: SafeArea(
            child: Column(children: <Widget>[
          TextField(
            decoration: const InputDecoration(prefixIcon: Icon(Icons.search)),
            controller: urlController,
            keyboardType: TextInputType.url,
            onSubmitted: (value) {
              var url = WebUri(value);
              if (url.scheme.isEmpty) {
                url = WebUri("https://morphcastapi-server.vercel.app/");
              }
              webViewController?.loadUrl(urlRequest: URLRequest(url: url));
            },
          ),
          Expanded(
            child: Stack(
              children: [
                InAppWebView(
                  key: webViewKey,
                  initialUrlRequest: URLRequest(
                      url: WebUri("https://morphcastapi-server.vercel.app/")),
                  initialSettings: settings,
                  pullToRefreshController: pullToRefreshController,
                  onWebViewCreated: (controller) {
                    controller.addJavaScriptHandler(
                        handlerName: "emotionChannel",
                        callback: (args) {
                          String message = args.join();
                          if (message == "Angry" ||
                              message == "Disgust" ||
                              message == "Fear" ||
                              message == "Sad") {
                            super.dispose();
                            controller.dispose();
                            Timer(const Duration(seconds: 5), () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SplashScreen(
                                          emocao: message,
                                        )))
                            );
                          } else {
                            super.dispose();
                            controller.dispose();
                            Timer(const Duration(seconds: 5), () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SplashScreen(
                                          emocao: message,
                                        )))
                            );
                          }
                        });
                    webViewController = controller;
                  },
                  onLoadStart: (controller, url) {
                    setState(() {
                      this.url = url.toString();
                      urlController.text = this.url;
                    });
                  },
                  onPermissionRequest: (controller, request) async {
                    final resources = <PermissionResourceType>[];
                    if (request.resources
                        .contains(PermissionResourceType.CAMERA)) {
                      final cameraStatus = await Permission.camera.request();
                      if (!cameraStatus.isDenied) {
                        resources.add(PermissionResourceType.CAMERA);
                      }
                    }
                    if (request.resources
                        .contains(PermissionResourceType.MICROPHONE)) {
                      final microphoneStatus =
                          await Permission.microphone.request();
                      if (!microphoneStatus.isDenied) {
                        resources.add(PermissionResourceType.MICROPHONE);
                      }
                    }
                    // only for iOS and macOS
                    if (request.resources.contains(
                        PermissionResourceType.CAMERA_AND_MICROPHONE)) {
                      final cameraStatus = await Permission.camera.request();
                      final microphoneStatus =
                          await Permission.microphone.request();
                      if (!cameraStatus.isDenied &&
                          !microphoneStatus.isDenied) {
                        resources
                            .add(PermissionResourceType.CAMERA_AND_MICROPHONE);
                      }
                    }

                    return PermissionResponse(
                        resources: resources,
                        action: resources.isEmpty
                            ? PermissionResponseAction.DENY
                            : PermissionResponseAction.GRANT);
                  },
                  shouldOverrideUrlLoading:
                      (controller, navigationAction) async {
                    var uri = navigationAction.request.url!;

                    if (![
                      "http",
                      "https",
                      "file",
                      "chrome",
                      "data",
                      "javascript",
                      "about"
                    ].contains(uri.scheme)) {
                      if (await canLaunchUrl(uri)) {
                        // Launch the App
                        await launchUrl(
                          uri,
                        );
                        // and cancel the request
                        return NavigationActionPolicy.CANCEL;
                      }
                    }

                    return NavigationActionPolicy.ALLOW;
                  },
                  onLoadStop: (controller, url) async {
                    pullToRefreshController?.endRefreshing();
                    setState(() {
                      this.url = url.toString();
                      urlController.text = this.url;
                    });
                  },
                  onReceivedError: (controller, request, error) {
                    pullToRefreshController?.endRefreshing();
                  },
                  onProgressChanged: (controller, progress) {
                    if (progress == 100) {
                      pullToRefreshController?.endRefreshing();
                    }
                    setState(() {
                      this.progress = progress / 100;
                      urlController.text = url;
                    });
                  },
                  onUpdateVisitedHistory: (controller, url, androidIsReload) {
                    setState(() {
                      this.url = url.toString();
                      urlController.text = this.url;
                    });
                  },
                  onConsoleMessage: (controller, consoleMessage) {
                    if (kDebugMode) {
                      print(consoleMessage);
                    }
                  },
                ),
                progress < 1.0
                    ? LinearProgressIndicator(value: progress)
                    : Container(),
              ],
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  webViewController?.goBack();
                },
              ),
              ElevatedButton(
                child: const Icon(Icons.arrow_forward),
                onPressed: () {
                  webViewController?.goForward();
                },
              ),
              ElevatedButton(
                child: const Icon(Icons.refresh),
                onPressed: () {
                  webViewController?.reload();
                },
              ),
            ],
          ),
        ])));
  }

  void delay() {}
}
