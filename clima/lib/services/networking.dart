import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    final Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);

      // double temperature = josn['main']['temp'];
      // int condition = josn['weather'][0]['id'];
      // String cityName = josn['name'];

      // return {'temperature': temperature, 'condition': condition, 'cityName': cityName};
    } else {
      print(response.statusCode);
    }
  }
}
