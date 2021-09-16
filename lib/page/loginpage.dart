import '/page/homepage.dart';

import '/models/loginInfomodels.dart';
import '/service/fetchfrominternet.dart';
import 'package:flutter/material.dart';
import '/utilities/components.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}


class _LogInPageState extends State<LogInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void onTap()async{
  print(email.text);
  print(password.text);
  LoginInfo info = LoginInfo(email: email.text , password:  password.text);
  LoginApiResponse loginApiResponse = await apiCallLogin(info); 
  // if(loginApiResponse.error == null){
  //   print("login successfull");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        ),
      );
  // }else {
  //   print("password or usrename bhul gya kya"); 
  // }
    print("I am loged in ");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5),
                ],
                    stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9,
                ])),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding:
                  EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  EmailTextField(controller: email,),
                  SizedBox(height: 30.0),
                  PasswordTextField(controller: password,),
                  SizedBox(height: 20.0),
                  LogInButton(onTap: onTap,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}