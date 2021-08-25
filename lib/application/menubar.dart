import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/application/settings_page.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';

class menubar extends StatelessWidget {
  const menubar({Key key}) : super(key: key);
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('Could not launch $command');
    }
  }

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
                child: Image.asset(
                  "assets/images/pp.jpg",
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
                  fit: BoxFit.cover,
                  //sample cover photo
                  image: NetworkImage(
                      'https://image.shutterstock.com/image-vector/red-abstract-background-vector-modern-260nw-788330542.jpg')),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.notifications_none_outlined,
              color: kPrimaryColor,
            ),
            title: Text(
              'Notifications',
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
                      )), //notification count
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.settings_outlined,
              color: kPrimaryColor,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return settings();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.payment_outlined,
              color: kPrimaryColor,
            ),
            title: Text(
              'Payment method',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.phone,
              color: kPrimaryColor,
            ),
            title: Text(
              'Contact Us',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {
              customLaunch('tel:+94 696969696');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.star_border_outlined,
              color: kPrimaryColor,
            ),
            title: Text(
              'Rate Us',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {
              customLaunch(
                  'https://play.google.com/store/apps/details?id=com.spotify.music&hl=en&gl=US');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.share_outlined,
              color: kPrimaryColor,
            ),
            title: Text(
              'Share',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            onTap: () {
              Share.share('download ciyal app from here https://play.google.com/store/apps/details?id=com.github.android&hl=en&gl=US');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.power_settings_new_outlined,
              color: kPrimaryColor,
            ),
            title: Text(
              'Log out',
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
