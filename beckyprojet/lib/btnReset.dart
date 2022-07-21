import 'package:beckyprojet/newCode.dart';
import 'package:flutter/material.dart';

class BtnReset extends StatefulWidget {
  const BtnReset({Key? key}) : super(key: key);

  @override
  State<BtnReset> createState() => _BtnResetState();
}

class _BtnResetState extends State<BtnReset> {
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
          child: const Text('Reset',
              style: TextStyle(fontSize: 18, color: Colors.white))),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Newcode(),
            )); // Navigate to second route when tapped.
      },
    );
  }
}
