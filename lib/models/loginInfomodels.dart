
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