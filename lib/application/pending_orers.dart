import 'dart:ffi';

import 'package:flutter/material.dart';

import '../constants.dart';

class pending_u extends StatefulWidget {
  const pending_u({Key key}) : super(key: key);

  @override
  _pending_uState createState() => _pending_uState();
}

class _pending_uState extends State<pending_u> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Text(
          'Pending Orders',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: kPrimaryColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              orders(
                  'Dreamron Hair Conditioner',
                  'Due paymment = rs 200/=',
                  'Currunt status : shipping',
                  'Order complete on 2021/10/14',
                  'https://www.myshop.lk/wp-content/uploads/2019/06/Dreamron-King-Coconut-Conditioning-Shampoo-1.jpg'),
              orders(
                  'Sunsilk Shampoo',
                  'Due paymment = rs 150/=',
                  'Currunt status : Processing',
                  'Order complete on 2021/1/4',
                  'https://www.sunsilk.com/content/dam/unilever/sunsilk/india/pack_shot/front/hair_care/wash_and_care/sunsilk_hair_-_shampoo_180_000_ml/stunning-black_shine-180ml-fop-sh-756665.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget orders(productName, payment, staus, date, image) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                  color: kBlackColor,
                  width: 0.5,
                ),
                bottom: BorderSide(
                  color: kBlackColor,
                  width: 0.5,
                ))),
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  productName,
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  payment,
                  style: TextStyle(
                    color: kBlackColor,
                    fontSize: 15,
                  ),
                ),
                Text(
                  staus,
                  style: TextStyle(
                    color: orange,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: kgrey,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
