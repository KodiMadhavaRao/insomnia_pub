import 'package:http/http.dart';

class HttpRequest{
  static getOffers() async {
    Response response = await get('http://geekadvises.com/insomnia/special_offers_data');
    int statusCode = response.statusCode;
    Map<String, String> headers = response.headers;
    String contentType = headers['content-type'];
    String json = response.body;
  }
}