import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class Api {
  String baseUrl = 'https://recruitment.pt-bks.com/test/';
  String imgUrl = 'https://recruitment.pt-bks.com/assets/';

  Future<dynamic> apiJsonGet(
    String url,
  ) async {
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    log('headers : $headers');
    log('url : $baseUrl$url');

    http.Response r =
        await http.get(Uri.parse(baseUrl + url), headers: headers);
    var data = json.decode(r.body);
    log('status code : ${r.statusCode}');
    return data;
  }
}
