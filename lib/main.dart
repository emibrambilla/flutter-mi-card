import 'dart:ui';

import 'package:flutter/material.dart';

const mainColor = Colors.deepPurple;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: mainColor.shade400,
        body: Container(
          child: AppContent(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  mainColor.shade100,
                  mainColor.shade300,
                  mainColor.shade900
                ]),
          ),
        ),
      ),
    );
  }
}

class AppContent extends StatelessWidget {
  const AppContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 73,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/photo.jpg'),
              )),
          SizedBox(
            height: 10,
          ),
          //Name
          Text(
            'Emilio Brambilla',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
                fontSize: 35.0),
          ),
          //Role
          Text(
            'FRONTEND ENGENEER',
            style: TextStyle(
                color: mainColor.shade100,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceSans',
                letterSpacing: 2.5,
                fontSize: 20.0),
          ),
          //Divivder
          SizedBox(
            height: 40,
            width: 150,
            child: Divider(
              color: mainColor.shade100,
              thickness: 2,
            ),
          ),
          //Phone-card
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: mainColor.shade900,
              ),
              title: Text(
                '+39 3894956070',
                style: TextStyle(
                    color: mainColor.shade900,
                    fontFamily: 'SourceSans',
                    fontSize: 18),
              ),
            ),
          ),
          //  mail card
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: ListTile(
              leading: Icon(
                Icons.mail,
                color: mainColor.shade900,
              ),
              title: Text(
                'emilio.brambilla96@gmail.com',
                style: TextStyle(
                    color: mainColor.shade900,
                    fontFamily: 'SourceSans',
                    fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
