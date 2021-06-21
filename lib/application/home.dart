import 'package:flutter/material.dart';

import '../constants.dart';
class home extends StatelessWidget {
  const home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Ciyal',
        style: TextStyle(
          color: kPrimaryColor,
        ),
        ),

        leading: IconButton(
          icon: Icon(Icons.segment,
          color: kPrimaryColor,),
          onPressed:(){},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert,
            color: kPrimaryColor,),
            onPressed: (){},
          )

        ],
      )

    );

  }
}
