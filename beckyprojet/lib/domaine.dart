import 'package:flutter/material.dart';

class Domaine extends StatefulWidget {
  const Domaine({ Key? key }) : super(key: key);

  @override
  State<Domaine> createState() => _DomaineState();
}

class _DomaineState extends State<Domaine> {
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
          title: Text('Bureautique'),
          backgroundColor: Colors.white,
        ),
          bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('My classes'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Account')
          )
        ],
      ),
          
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(padding: const EdgeInsets.all(10), children: <Widget>[
            Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      'Your domain of formation',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          color: Colors.blue[900]),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 280,
                      child: Text(
                        'In which domain do you want to do your formation ? ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      )),
                                
                   /*  ListView.separated(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
                      itemCount: element.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 15,
                        );
                      },
                      itemBuilder: (context, index) {
                        return buildCard(index);
                      },
                    ), */
                  
                
                ])
          ]),
        )
    );
  }
}