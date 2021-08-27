import 'package:flutter/material.dart';

import 'package:flutter_auth/application/menubar.dart';

import '../constants.dart';
import 'product_discription.dart';

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
                        add(
                            'Burger',
                            'https://www.pngplay.com/wp-content/uploads/2/Burger-Transparent-PNG.png',
                            'BurgerKing',
                            'Rs 200 /=',
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                        add(
                            'Sandwich',
                            'https://purepng.com/public/uploads/large/purepng.com-sandwichfood-slice-salad-tasty-bread-vegetable-health-delicious-breakfast-sandwich-9415246186167yco8.png',
                            'Perera and Sons',
                            'Rs 300 /=',
                            'Scooby-Doo was originally broadcast on CBS from 1969 to 1976, when it moved to ABC. ABC aired various versions of Scooby-Doo until canceling it in 1985, and presented a spin-off featuring the characters as children called A Pup Named Scooby-Doo from 1988 until 1991. Two Scooby-Doo reboots aired as part of Kids WB on The WB and its successor The CW from 2002 until 2008. Further reboots were produced for Cartoon Network beginning in 2010 and continuing through 2018.'),
                        add(
                            'Pizza',
                            'http://pngimg.com/uploads/pizza/pizza_PNG43986.png',
                            'Pizza Hut',
                            'Rs 1200 /=',
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),

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

  Widget add(name, image, shop, price, dis) {
    var custom = Icons.favorite_border;
    return Container(
      height: 10,
      width: 10,
      child: GestureDetector(
        onTap: () {
          name1 = name;
          image1 = image;
          shop1 = shop;
          price1 = price;
          dis1 = dis;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return productDis();
              },
            ),
          );
        },
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
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(image),
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
                            name,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            price,
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
                          child: icon2(custom)),
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

  Widget icon() {
    return Icon(
      Icons.favorite_border,
      color: Colors.red,
    );
  }

  Widget icon2(icon) {
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
