

import 'package:booksearchapp/data.dart';

import 'page/loginpage.dart';
import 'package:flutter/material.dart';



void main() async{
// Class2nd newvar = Class2nd(age : 12, name:  "harshit" , lang: ["hindi" , "English"]);
// print(newvar.name) ;
  
  runApp(App());
}
class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInPage(),
    );
  }
}