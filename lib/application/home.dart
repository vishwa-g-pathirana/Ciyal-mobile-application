import 'package:flutter/material.dart';

import '../constants.dart';
import 'menubar.dart';

var scaffoldkey = GlobalKey<ScaffoldState>();

class home extends StatelessWidget {
  const home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: EdgeInsets.all(20.0),
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
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search you're looking for",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Today Offers',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('assets/images/home (2).jpg'),
                          promoCard('assets/images/home (3).jpg'),
                          promoCard('assets/images/home (4).jpg'),
                          promoCard('assets/images/home (6).jpg'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Products',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 750,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 70),
                        child: ListView(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: false,
                          children: <Widget>[
                            productCard('assets/images/home (1).jpg'),
                            productCard('assets/images/home (5).jpg'),
                            productCard('assets/images/home (1).jpg'),
                            productCard('assets/images/home (1).jpg'),
                            productCard('assets/images/home (1).jpg'),
                            productCard('assets/images/home (1).jpg'),
                            productCard('assets/images/home (1).jpg'),
                            productCard('assets/images/home (1).jpg'),
                            productCard('assets/images/home (1).jpg'),
                            productCard('assets/images/home (1).jpg'),
                            productCard('assets/images/home (1).jpg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //offers card

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    );
  }
//product card

  //image
  Widget productCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 1.3,
      child: Row(
        children: [
          Container(
            width: 170,
            height: 170,
            margin: EdgeInsets.only(top: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      stops: [
                        0.1,
                        0.9
                      ],
                      colors: [
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.1)
                      ])),
            ),
          ),

          //lable
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, stops: [
                      0.1,
                      0.9
                    ], colors: [
                      Colors.grey.withOpacity(.1),
                      Color.fromRGBO(244, 243, 243, 1).withOpacity(0.09),
                    ])),
                width: 200,
                height: 170,
                margin: EdgeInsets.only(top: 15.0),
                padding: EdgeInsets.only(right: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Chicken Burger',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ref 1022010',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Matara Bath kade',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'RS 300/=',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Text(
                      'Delivery Free',
                      style: TextStyle(color: Colors.red[300]),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
