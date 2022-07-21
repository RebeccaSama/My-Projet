import 'package:beckyprojet/newPassword.dart';
import 'package:beckyprojet/welcome.dart';
import 'package:flutter/material.dart';

class BtnOk extends StatefulWidget {
  const BtnOk({Key? key}) : super(key: key);

  @override
  State<BtnOk> createState() => _BtnOkState();
}

class _BtnOkState extends State<BtnOk> {
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
          child: const Text('Ok',
              style: TextStyle(fontSize: 18, color: Colors.white))),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    NewPassword())); // Navigate to second route when tapped.
      },
    );
  }
}
