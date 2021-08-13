import 'package:flutter/material.dart';

import '../constants.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  var qnt = 1;
  var bprice;

  bool pressAttention = false;
  bool pressAttention2 = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: kPrimaryColor,
          ),
        ),
        title: Text(
          'Cart',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: kPrimaryColor,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: new RaisedButton(
                        child: new Text('Previous Orders'),
                        textColor:
                            pressAttention2 ? Colors.black : Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30),
                            side: BorderSide(color: kPrimaryColor)),
                        color: pressAttention ? kPrimaryColor : Colors.white,
                        onPressed: () {
                          if (pressAttention2 = true) {
                            setState(() {
                              pressAttention2 = false;
                              pressAttention = true;
                            });
                          } else {
                            setState(() {
                              pressAttention = true;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: new RaisedButton(
                        child: new Text('New Cart'),
                        textColor:
                            pressAttention2 ? Colors.white : Colors.black,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30),
                            side: BorderSide(color: kPrimaryColor)),
                        color: pressAttention2 ? kPrimaryColor : Colors.white,
                        onPressed: () {
                          if (pressAttention = true) {
                            setState(() {
                              pressAttention = false;
                              pressAttention2 = true;
                            });
                          } else {
                            setState(() {
                              pressAttention2 = true;
                            });
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      newcart(),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget newcart() {
    bprice = 100;
    bprice = bprice * qnt;

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.grey[200],
        child: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow,
                  image: DecorationImage(
                    image: AssetImage('assets/images/home (1).jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'Burger',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Burger King',
                    style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (qnt > 0) {
                              qnt = qnt - 1;
                            } else {
                              setState(() {
                                qnt = 0;
                              });
                            }
                          });
                        },
                        icon: Icon(Icons.add_circle_outline),
                        color: Colors.red[700],
                      ),
                      Text(
                        '$qnt',
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            qnt = qnt + 1;
                          });
                        },
                        icon: Icon(Icons.add_circle_outline),
                        color: Colors.red[700],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('RS $bprice'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[900],
                        size: 15,
                      ),
                      Text(
                        '(x4)',
                        style: TextStyle(color: Colors.yellow[900]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
