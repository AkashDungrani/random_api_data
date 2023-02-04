import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:randomapidata/models/randompeople.dart';

class ApiHelper {
  ApiHelper._();
  static final ApiHelper apiHelper = ApiHelper._();
  Future<Randomdata?> fetchdata() async {
    String api = "https://randomuser.me/api/";
    http.Response res = await http.get(Uri.parse(api));
    if (res.statusCode == 200) {
      Map decodeData = jsonDecode(res.body);
      Randomdata randomdata = Randomdata.fromMap(data: decodeData);
      return randomdata;
    }
  }
}
