import 'package:beckyprojet/welcome.dart';
import 'package:flutter/material.dart';

import 'checkBox.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: Image.asset('assets/logo.png', fit: BoxFit.cover, height: 20),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
            child: Center(
                child: Column(children: [
          //login title
          Container(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'NEW PASSWORD',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.blue[900]),
            ),
          ),
          SizedBox(height: 10),

          Container(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'Now enter your new password ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blue[900]),
            ),
          ),
          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: ' new password',
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'confirm password',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                //check box
                child: CheckBox(),
                //login title
              ),
              Text(
                'Remember me',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black45),
              ),
            ],
          ),

          SizedBox(height: 20),
          Container(
            child: Welcome(),
          ),
        ]))));
  }
}
