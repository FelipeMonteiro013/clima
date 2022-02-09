import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkData {
  NetworkData(this.url);
  final String url;

  Future getNetworkData() async {
    http.Response response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
