import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';

class productDis extends StatefulWidget {
  const productDis({Key key}) : super(key: key);

  @override
  _productDisState createState() => _productDisState();
}

var product;

class _productDisState extends State<productDis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: false,
        backgroundColor: kPrimaryColor,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: kBackgroundColor,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: kBackgroundColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: kBackgroundColor,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 30,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                      flex: 40,
                      child: Container(
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            border: Border.all(color: kPrimaryColor),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100.0))),
                      )),
                  Expanded(
                    flex: 60,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                image1),
                            fit: BoxFit.fitWidth),
                        border: Border.all(color: kPrimaryColor),
                        //borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0)),
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 70,
            child: Container(
              width: double.infinity,
              color: kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      name1,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      shop1,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      price1,
                      style: TextStyle(
                        color: kgrey,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                          size: 15,
                        ),
                        Text(
                          '(x4)',
                          style: TextStyle(color: Colors.yellow[800]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dis1)
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Container(
                        //height: MediaQuery.of(context).size.height,

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 15, left: 8, right: 8),
                              child: SizedBox(
                                width: 60,
                                height: 60,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Icon(Icons.share_outlined),
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            kPrimaryColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                            side: BorderSide(
                                                color: kPrimaryColor,
                                                width: 3))),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 15, left: 8, right: 8),
                              child: SizedBox(
                                height: 60,
                                width: 200,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Add to cart',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            kPrimaryColor),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            kBackgroundColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                            side: BorderSide(
                                                color: kPrimaryColor))),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
