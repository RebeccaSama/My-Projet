import 'package:flutter/material.dart';

import 'button.dart';

class startintPage extends StatelessWidget {
  const startintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      child: ListView(padding: const EdgeInsets.all(10), children: <Widget>[
        Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 200, left: 5, top: 70),
                  width: 90,
                  child: Image.asset('assets/logo.png', height: 30)),
              Container(
                  margin: EdgeInsets.only(bottom: 2, top: 80),
                  height: 200,
                  child: Image.asset('assets/start.png', width: 90000)),
              Container(
                margin: EdgeInsets.all(0),
                child: Column(children: [
                  Container(
                    child: Text(
                      'Online learning platform ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 280,
                      child: Text(
                        'With us your future is guaranteed,come learn new skills and developthem to make the future better. ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      )),
                ]),
              ),
              btnStart(),
            ])
      ]),
    ));
  }
}
