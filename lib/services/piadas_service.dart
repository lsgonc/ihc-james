import 'package:http/http.dart' as http;
import 'package:first_app/models/piadas_model.dart';
import 'dart:convert';

Future<PiadasModel> getPiadas() async {
  const url =
      "https://v2.jokeapi.dev/joke/Any?blacklistFlags=nsfw,religious,political,racist,sexist,explicit";

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return PiadasModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Api call não funcionou");
  }
}
