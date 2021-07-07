import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: MyHome(),
      ),
    );
  }
}
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [ Image.asset('assets/welcm.jpg'),
        Align(alignment: Alignment.center,
            child: Text("WELCOME",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 60,
                ))),


        Padding(  padding: const EdgeInsets.only(
            top: 50, right: 8, bottom: 50, left: 8.0),
          child: Align(alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap:  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Tap to continue',style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
            ),
          ),
        )



      ],);

  }
}
