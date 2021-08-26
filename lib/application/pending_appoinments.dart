import 'package:flutter/material.dart';

import '../constants.dart';

class pending_a extends StatefulWidget {
  const pending_a({Key key}) : super(key: key);

  @override
  _pending_aState createState() => _pending_aState();
}

class _pending_aState extends State<pending_a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Text(
          'Pending Appoinments',
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
                  'Aveera Saloon',
                  'Paymment = rs 200/=',
                  'Normal Hair cut',
                  'Appoinment Date 2021/10/14',
                  'https://t4.ftcdn.net/jpg/02/57/87/17/360_F_257871718_m3KG4hIHsLg1Rx7wNFLbdpXKqeHKC4Ep.jpg'),
              orders(
                  'Nawaloka Hospitals',
                  'Due paymment = rs 1500/=',
                  'Dr.Navin Perera',
                  'Appoinment on 2021/1/4',
                  'https://logodix.com/logo/2021870.jpg'),
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
                    color: green,
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

