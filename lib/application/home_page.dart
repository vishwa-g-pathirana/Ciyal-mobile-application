import 'package:flutter/material.dart';

import 'package:flutter_auth/application/menubar.dart';

import '../constants.dart';
var scaffoldkey = GlobalKey<ScaffoldState>();

class homePage extends StatefulWidget {
  const homePage({Key key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldkey,
      drawer: menubar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Ciyal',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.segment,
            color: kPrimaryColor,
          ),
          onPressed: () {
            scaffoldkey.currentState.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'hey! Samadhi K,',
                          style: TextStyle(color: kPrimaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Shop Here',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 243, 243, 1),
                              borderRadius: BorderRadius.circular(50)),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black87,
                                ),
                                hintText: "Search you're looking for",
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 15)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                      catogaries(),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                  child: ListView(),
                ),
                Container(
                  height: 1000,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: false,
                      childAspectRatio: 1 / 1.5,
                      mainAxisSpacing: 7,
                      crossAxisSpacing: 5,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        add(),
                        add(),
                        add(),
                        add(),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget add() {
    var custom =Icons.favorite_border ;
    return Container(
      height: 10,
      width: 10,
      child: Card(
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/home (1).jpg'),
                ),
                color: Colors.red,
              ),
              height: 100,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 3),
                    child: Column(
                      children: [
                        Text(
                          'Burger',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Rs 500',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow[800],
                            ),
                            Text(
                              '(4)',
                              style: TextStyle(color: Colors.yellow[800]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 7, top: 50),
                      child: icon2(custom)
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget icon(){
    return Icon(
      Icons.favorite_border,
      color: Colors.red,
    );
  }

  Widget icon2(icon){
    return Icon(
      icon,
      color: Colors.red,
    );
  }



  Widget catogaries() {
    return GestureDetector(
      child: CircleAvatar(),
    );
  }
}
