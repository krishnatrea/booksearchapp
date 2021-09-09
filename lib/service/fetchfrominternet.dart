import 'dart:convert';

import '/models/loginInfomodels.dart';
import 'package:http/http.dart' as http;


  Future<LoginApiResponse> apiCallLogin(LoginInfo info) async {
    
    var url = Uri.parse('https://reqres.in/api/login');
    http.Response response = await http.post(url, body: info.tojson());
   
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    String h = "heo";
    print("say ${h} ${h} everyone");
   
    Map<String, dynamic> data = jsonDecode(response.body);
    return LoginApiResponse.fromjson(data);
  }
  