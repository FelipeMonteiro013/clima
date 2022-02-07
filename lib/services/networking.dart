import 'package:http/http.dart';
import 'dart:convert';

class NetworkData {
  NetworkData(this.url);
  final String url;

  Future getNetworkData() async {
    try {
      Response response = await get(
        Uri.parse(url),
      );
      if (response.statusCode == 200) {
        String data = response.body;
        return jsonDecode(data);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }
}
