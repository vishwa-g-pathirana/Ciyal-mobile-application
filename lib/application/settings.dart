import 'package:flutter/material.dart';

class example extends StatelessWidget {
  const example({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Text(
          'settings',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),

      ),
    );
  }
}
