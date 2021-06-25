import 'package:flutter/material.dart';

import '../constants.dart';
import 'menubar.dart';
var scaffoldkey = GlobalKey<ScaffoldState>();
class home extends StatelessWidget {
  const home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      drawer: menubar(),
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
          onPressed:(){
            scaffoldkey.currentState.openDrawer();
          },
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
