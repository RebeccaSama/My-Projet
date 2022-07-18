import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({ Key? key }) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
           ),
            title: Image.asset('assets/logo.png', fit: BoxFit.cover,
                  height: 32),
           backgroundColor: Colors.white,
          ),
    );
  }
}