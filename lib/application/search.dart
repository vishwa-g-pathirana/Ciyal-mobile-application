import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_auth/application/search_bar.dart';
import 'package:flutter_auth/application/search_bar_catogarie_card.dart';

import '../constants.dart';

class searchPage extends StatelessWidget {
  const searchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),

      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kPrimaryColor,

            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,

                  ),
                  Text(
                    "Search Everything \nFrom Here",
                    style: TextStyle(
                      color: kPrimaryLightColor,
                      fontSize: 40,

                    ),



                  ),
                  SearchBar(),
                  //example catogarie cards
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Fruits",
                          svgSrc: "assets/icons/apple.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Baby Items",
                          svgSrc: "assets/icons/bear.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Animal Products",
                          svgSrc: "assets/icons/werewolf.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Catogarie Card",
                          svgSrc: "assets/icons/apple.png",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
