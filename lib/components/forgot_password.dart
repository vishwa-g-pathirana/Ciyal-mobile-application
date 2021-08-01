import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class ForgotPassword extends StatelessWidget {
  final bool login;
  final Function press;
  const ForgotPassword({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            login ? "Forgot Your Password? " : "Back to login? ",
            style: TextStyle(color: kPrimaryColor),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              login ? "Reset from here" : "back",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
