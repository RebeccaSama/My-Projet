import 'package:flutter/material.dart';

import 'login.dart';

class btnStart extends StatefulWidget {
  const btnStart({ Key? key }) : super(key: key);

  @override
  State<btnStart> createState() => _btnStartState();
}

class _btnStartState extends State<btnStart> {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      child: ElevatedButton(
        child: const Text('Start learning'),
        onPressed: () {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LogIn())
          );// Navigate to second route when tapped.
        },
      ),
    );
  }
}