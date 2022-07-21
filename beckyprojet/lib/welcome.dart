import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
          padding: const EdgeInsets.all(10),
          child: ListView(padding: const EdgeInsets.all(10), children: <Widget>[
            Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(left: 5, top: 10, right: 225),
                        child: Text(
                          'Hello',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 0, right: 160),
                        child: Text(
                          'Rebecca sama !',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                              color: Colors.black54),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 280,
                      child: Text(
                        'What brings you to our platform ? Choose your objectve and discover our formations ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      )),
                  SizedBox(height: 10),

                  // email textfield
                  Column(children: [
                    Container(
                        height: 100,
                        child: Image.asset('assets/start.png', width: 90000)),
                    Container(
                        margin: EdgeInsets.all(0),
                        child: Column(children: [
                          Container(
                            child: Text(
                              'Professional formation ',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          )
                        ])),
                    SizedBox(height: 5),
                    Container(
                        height: 100,
                        child: Image.asset('assets/start.png', width: 90000)),
                    Container(
                        margin: EdgeInsets.all(0),
                        child: Column(children: [
                          Container(
                            child: Text(
                              'Recycling',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          )
                        ])),
                    SizedBox(height: 5),
                    Container(
                        height: 100,
                        child: Image.asset('assets/start.png', width: 90000)),
                    Container(
                        margin: EdgeInsets.all(0),
                        child: Column(children: [
                          Container(
                            child: Text(
                              'Accelerated formation',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          )
                        ])),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        margin: EdgeInsets.all(0),
                        child: Column(children: [
                          Container(
                            child: Text(
                              'Your future is our priority ! ',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: Colors.blue[700]),
                            ),
                          )
                        ])),
                  ]),
                ])
          ]),
        ));
  }
}
