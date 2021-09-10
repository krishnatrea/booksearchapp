
import 'page/loginpage.dart';
import 'package:flutter/material.dart';


void main() async{
// Class2nd newvar = Class2nd(age : 12, name:  "harshit" , lang: ["hindi" , "English"]);
// print(newvar.name) ;
  
  List<int> h = [1,2,3,4,5,6,7,8,9];

  for (int i = 0; i < h.length; i++) {
    print(h[i]);
  }

  for(int v in h){
    print(v);
  }
  
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