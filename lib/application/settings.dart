import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constants.dart';

class example extends StatefulWidget {
  const example({Key key}) : super(key: key);

  @override
  _exampleState createState() => _exampleState();
}

class _exampleState extends State<example> {
  final _formKey = new GlobalKey<FormState>();
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final image = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image as File;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Business Account',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: kPrimaryColor,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: kPrimaryColor,
              ))
        ],
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
                //child: Flexible(child: _image != null ? Image.file(_image) : Text('no Image')),
                ),
            Center(
              child: Container(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.flaticon.com/icons/png/512/847/847969.png'),
                  radius: 60,
                  backgroundColor: kShadowColor,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: new Border.all(
                      color: kPrimaryColor,
                      width: 4.0,
                    )),
              ),
            ),
            Center(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      getImage();
                    },
                    child: Text(
                      'Tap here to edit Logo',
                      style: TextStyle(
                        color: kPrimaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20 ,top: 20),
              child: Center(
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            fillColor: Colors.red,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            hintText: 'Business Name',
                          ),
                          validator: (value) => value.isEmpty ? '':null,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            fillColor: Colors.red,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            hintText: 'Registration Number',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            fillColor: Colors.red,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            hintText: 'Busines Address',
                          ),
                          keyboardType: TextInputType.streetAddress,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            fillColor: Colors.red,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            hintText: 'Business Tel No',
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            fillColor: Colors.red,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            hintText: 'Business E-mail',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            fillColor: Colors.red,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            hintText: 'Name of the owner',
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            fillColor: Colors.red,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            hintText: 'Nic',

                          ),

                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            fillColor: Colors.red,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            hintText: 'Owners Tel No',
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: Colors.red,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            fillColor: Colors.red,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(
                                  color: Colors.red,
                                  width: 1.5,
                                )),
                            hintText: 'owners E-mail Address',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Center(
                        child:Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 5),
                          child: SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                                child: Text(
                                    "Register"
                                    ,

                                    style: TextStyle(fontSize: 20)
                                ),
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50),
                                            side: BorderSide(color: Colors.red)
                                        )
                                    )
                                ),
                              onPressed: (){},
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
