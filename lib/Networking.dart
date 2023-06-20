import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  late String url;
  NetworkHelper(this.url);
  Future getData() async {
    http.Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      print(res.statusCode);
    }
  }
}
