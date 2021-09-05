import 'dart:convert';

import 'package:http/http.dart' as http;


  Future <LoginApiResponse> apiCallLogin(LoginInfo info) async{
    
    var url = Uri.parse('https://reqres.in/api/login');
    var response = await http.post(url, body: {
      "email" : info.email,
      "password" : info.password
    });
   
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
   
    final data = jsonDecode(response.body);
    return LoginApiResponse(token: data["token"], error: data["error"]);
  }

class LoginInfo{
  String? email;
  String? password;
  
  LoginInfo({required this.email , required this.password});
  
}



class LoginApiResponse{
  final String? token;
  final String? error;

  LoginApiResponse({this.token,this.error});

}