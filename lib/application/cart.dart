import 'package:flutter/material.dart';

import '../constants.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: SafeArea(),
    );
  }

  Widget SafeArea() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
            children: List.generate(cartList.length, (index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(cartList[index]['img']),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cartList[index]['name'],
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "ref " + cartList[index]['ref'],
                          style: TextStyle(
                              fontSize: 13,
                              color: kOrangeColor.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          cartList[index]['size'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(cartList[index]['price'],
                                style: TextStyle(
                                  fontSize: 22,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: kBlackColor.withOpacity(0.5))),
                                  child: Center(
                                    child: Icon(
                                      Icons.minimize_outlined,
                                      size: 10,
                                      color: kBlackColor.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: kBlackColor.withOpacity(0.5))),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 10,
                                      color: kBlackColor.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          );
        })),
        Divider(
          color: kShadowColor.withOpacity(0.8),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
            "Do you have a promotion code?",
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: kShadowColor.withOpacity(0.8),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Standard - Free",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 70),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50 / 2)),
              child: Center(
                child: Text(
                  "Buy for \RS 50".toUpperCase(),
                  style: TextStyle(
                      color: kBackgroundColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
