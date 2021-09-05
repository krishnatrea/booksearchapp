import 'package:flutter/material.dart';

import '/utilities/constants.dart';

class EmailTextField extends StatelessWidget {
    TextEditingController controller ; 
 EmailTextField({
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: labelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecorationStyle,
          height: 60.0,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              // suffixIcon: Icon(
              //   Icons.email,
              //   color: Colors.white,
              // ),
              hintText: 'Enter your email address',
              hintStyle: hintTextStyle,
            ),
          ),
        )
      ],
    );
  }
}

class PasswordTextField extends StatelessWidget {
  TextEditingController controller ; 
 PasswordTextField({
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: labelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecorationStyle,
          height: 60.0,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Enter your password',
              hintStyle: hintTextStyle,
            ),
          ),
        )
      ],
    );
  }
}

class LogInButton extends StatelessWidget {
 final Function()? onTap;
  const LogInButton({Key? key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: onTap,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOG IN',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            wordSpacing: 2.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}