import 'package:http/http.dart' as http;

Future<void> sendFace() async {
  const url = "http://192.168.1.100:5000/led/changeExpression/9";

  final response = await http.get(Uri.parse(url));

  if (response.statusCode != 200) {
    throw Exception("Api call não funcionou");
  }
}
