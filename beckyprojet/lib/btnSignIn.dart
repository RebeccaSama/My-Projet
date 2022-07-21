import 'package:beckyprojet/forgotPWD.dart';
import 'package:beckyprojet/welcome.dart';
import 'package:flutter/material.dart';

class btnSignIn extends StatefulWidget {
  const btnSignIn({Key? key}) : super(key: key);

  @override
  State<btnSignIn> createState() => _btnSignInState();
}

class _btnSignInState extends State<btnSignIn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
              color: Colors.blue[900], borderRadius: BorderRadius.circular(30)),
          height: 45,
          width: 250,
          child: const Text('Sign up',
              style: TextStyle(fontSize: 18, color: Colors.white))),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Welcome(),
            )); // Navigate to second route when tapped.
      },
    );
  }
}
