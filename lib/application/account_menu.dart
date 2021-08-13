import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/application/cart.dart';
import 'package:flutter_auth/application/example_profile.dart';
import 'package:flutter_auth/application/home.dart';
import 'package:flutter_auth/application/settings.dart';
import 'package:flutter_auth/application/shop.dart';

import '../constants.dart';

class tiles extends StatefulWidget {
  const tiles({Key key}) : super(key: key);

  @override
  _tilesState createState() => _tilesState();
}

class _tilesState extends State<tiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_outlined,
            color: kPrimaryColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return expprofille();
                    },
                  ),
                );
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/icon (2).png'),
                        radius: 30,
                        backgroundColor: kShadowColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Samadhi Kaushalya',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'View Profile',
                              style: TextStyle(
                                color: kShadowColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                color: kShadowColor,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 30),
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  mainAxisSpacing: 7,
                  childAspectRatio: 1.5 / 1,
                  crossAxisSpacing: 2,
                  crossAxisCount: 2,
                  children: <Widget>[
                    //order =>
                    //on tap function , button name , notification , button icon
                    tile(shop(), 'Shop', '1 new notification',
                        'assets/images/icon (3).png'),
                    tile(example(), 'Settings', '',
                        'assets/images/icon (1).png'),
                    tile('', 'Market', 'new items availabele',
                        'assets/images/icon (6).png'),
                    tile('', 'Money transfer', 'rs 50 available',
                        'assets/images/icon (5).png'),
                    tile('', 'market', '', 'assets/images/icon (4).png'),
                    tile('', 'Topic', 'Notifications',
                        'assets/images/icon (4).png'),
                    tile('', 'Topic', 'Notifications',
                        'assets/images/icon (4).png'),
                    tile('', 'Topic', 'Notifications',
                        'assets/images/icon (4).png'),
                    tile('', 'Topic', 'Notifications',
                        'assets/images/icon (4).png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tile(clickEvent, topic, notification, icon) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return clickEvent;
              },
            ),
          );
        },
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          semanticContainer: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 5,
          color: Colors.grey[100],
          shadowColor: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: CircleAvatar(
                  backgroundImage: AssetImage(icon),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      topic,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      notification,
                      style: TextStyle(
                        color: Colors.red[300],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
