
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/application/home.dart';
import 'package:flutter_auth/application/search.dart';

import 'model.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

enum BottomIcons { Home, Cart, Search, Account }

class _MainPageState extends State<MainPage> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(


        children: <Widget>[

          bottomIcons == BottomIcons.Home
              ? home()

              : Container(),
          bottomIcons == BottomIcons.Cart
              ? Center(
            child: Text(
              "Hi, this is cart page",
              style: TextStyle(fontSize: 18),
            ),
          )
              : Container(),
          bottomIcons == BottomIcons.Search
              ? searchPage()
              : Container(),
          bottomIcons == BottomIcons.Account
              ? Center(
            child: Text(
              "Hi, this is account page",
              style: TextStyle(fontSize: 18),
            ),
          )
              : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Color.fromRGBO(244, 243, 243, 1),
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Home;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.Home ? true : false,
                      icons: Icons.home_outlined,
                      text: "Home"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Cart;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.Cart ? true : false,
                      icons: Icons.shopping_cart_outlined,
                      text: "Cart"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Search;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.Search ? true : false,
                      icons: Icons.search,
                      text: "Search"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Account;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.Account ? true : false,
                      icons: Icons.person_outline,
                      text: "Account"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
