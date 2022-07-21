import 'package:beckyprojet/welcome.dart';
import 'package:flutter/material.dart';

class BtnLogIn extends StatefulWidget {
  const BtnLogIn({Key? key}) : super(key: key);

  @override
  State<BtnLogIn> createState() => _BtnLogInState();
}

class _BtnLogInState extends State<BtnLogIn> {
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
          child: const Text('Log in',
              style: TextStyle(fontSize: 18, color: Colors.white))),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Welcome())); // Navigate to second route when tapped.
      },
    );
  }
}
