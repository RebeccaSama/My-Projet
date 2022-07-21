import 'package:beckyprojet/btnReset.dart';
import 'package:beckyprojet/btnSignIn.dart';
import 'package:flutter/material.dart';

class ForgotPwd extends StatefulWidget {
  const ForgotPwd({Key? key}) : super(key: key);

  @override
  State<ForgotPwd> createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
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
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(padding: const EdgeInsets.all(10), children: <Widget>[
            Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      'FORGOT PASSWORD',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.blue[900]),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 280,
                      child: Text(
                        'As you forgotten your password, enter your email so you can enter a new password ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      )),
                  SizedBox(height: 100),

                  // email textfield
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
                          decoration: InputDecoration(
                            hintText: 'email',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  BtnReset()
                ])
          ]),
        ));
  }
}
