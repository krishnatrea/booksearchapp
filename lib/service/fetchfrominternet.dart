import 'dart:convert';

import 'package:http/http.dart' as http;


  Future<LoginApiResponse> apiCallLogin(LoginInfo info) async{
    
    var url = Uri.parse('https://reqres.in/api/login');
    http.Response response = await http.post(url, body: info.tojson());
   
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    String h = "heo";
    print("say ${h} to everyone");
   
    Map<String, dynamic> data = jsonDecode(response.body);
    return LoginApiResponse.fromjson(data);
  }
  
  class LoginInfo{
  String? email;
  String? password;
  
  LoginInfo({ this.email,this.password});

  Map<String,dynamic> tojson(){
    return {
      "email" : email,
      "password" : password,
    };
  }
}

// server -> value fetch factory classname.fromjson 
// send to server -> first change to json -> send 



class LoginApiResponse{
  final String? token;
  final String? error;

  LoginApiResponse({this.token,this.error});

  factory LoginApiResponse.fromjson(Map<String, dynamic> map){

    if(map['token'] != null){
      return LoginApiResponse(
        token: map['token']
      );
    }

    return LoginApiResponse(
      error: map['error']
    );
  }

}