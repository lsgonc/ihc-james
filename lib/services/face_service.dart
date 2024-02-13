import 'package:http/http.dart' as http;

Future<void> sendFace(String url) async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode != 200) {
    print(response.body);
    throw Exception("Api call não funcionou");
  }
}
