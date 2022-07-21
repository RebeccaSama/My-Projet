import 'package:flutter/material.dart';
import 'LogIn.dart';

class BtnContinue extends StatefulWidget {
  const BtnContinue({ Key? key }) : super(key: key);

  @override
  State<BtnContinue> createState() => _BtnContinueState();
}

class _BtnContinueState extends State<BtnContinue> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 70),
          decoration: BoxDecoration(
              color: Colors.blue[900], borderRadius: BorderRadius.circular(30)),
          height: 45,
          width: 250,
          child: const Text('Continue',
              style: TextStyle(fontSize: 18, color: Colors.white))),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    LogIn())); // Navigate to second route when tapped.
      },
    );
  }
}