import 'package:beckyprojet/forgotPWD.dart';
import 'package:beckyprojet/signIn.dart';
import 'package:beckyprojet/welcome.dart';
import 'package:flutter/material.dart';
import 'btnlogin.dart';
import 'checkBox.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
        body: SafeArea(
            child:
                ListView(padding: const EdgeInsets.all(10), children: <Widget>[
          Center(
              child: Column(children: [
            //login title
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'LOG IN',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blue[900]),
              ),
            ),

            SizedBox(height: 10),

            //reseaux sociaux
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: Icon(
                  Icons.facebook_rounded,
                  size: 50,
                  color: Colors.blue[900],
                ),
              ),
              Container(
                child: Icon(
                  Icons.facebook,
                  size: 50,
                  color: Colors.blue[900],
                ),
              ),
              Container(
                child: Icon(
                  Icons.facebook_outlined,
                  size: 50,
                  color: Colors.blue[700],
                ),
              ),
            ]),

            SizedBox(height: 50),
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

            SizedBox(height: 20),

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
                  child: Container(
                      child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'password',
                    ),
                  )),
                ),
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  //check box
                  CheckBox(),
                  Container(
                    margin: const EdgeInsets.only(left: 2),
                    child: Text(
                      'Remember me',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.black45),
                    ),
                    //login title
                  ),
                ]),
                ElevatedButton(
                  child: const Text('Forgot password?'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPwd()),
                    );
                  },
                ),
              ],
            ),

            SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //login title
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.black38),
                ),

                ElevatedButton(
                    child: const Text('Create account'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    }),
              ],
            ),

            SizedBox(height: 15),
            Container(
              child: BtnLogIn(),
            ),

            SizedBox(height: 30),
              
                ElevatedButton(
                    child: const Text('Remember me later !'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Welcome()),
                      );
                    }),
                  
          ])
          )
        ])));
  }
}
