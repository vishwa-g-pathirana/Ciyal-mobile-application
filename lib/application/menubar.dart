

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class menubar extends StatelessWidget {
  const menubar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('User Name'),
              accountEmail: Text('usermail@gmail.com'),
              currentAccountPicture: CircleAvatar(

                child: ClipOval(

                  child: Image.asset("assets/images/pp.jpg",
                    color: kPrimaryLightColor,
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                  ),
                ),
              ),
            decoration: BoxDecoration(
              color: kPrimaryColor,

              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('')
              ),


            ),
          ),
Divider(),
          ListTile(
            leading: Icon(Icons.notifications_none_outlined,
              color: kPrimaryColor,),
            title: Text('Notifications',
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
            ),
            onTap: () {},
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text('8',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  )),//notification count

                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings_outlined,
              color: kPrimaryColor,),
            title: Text('Settings',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.payment_outlined,
              color: kPrimaryColor,),
            title: Text('Payment method',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.phone,
              color: kPrimaryColor,),
            title: Text('Contact Us',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.star_border_outlined,
              color: kPrimaryColor,),
            title: Text('Rate Us',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.share_outlined,
              color: kPrimaryColor,),
            title: Text('Share',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.power_settings_new_outlined,
              color: kPrimaryColor,),
            title: Text('Log out',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {},
          ),






        ],

      ),
    );
  }
}
