import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Center(
          child: Text(
            'ASK ME ANYTHING',
            style: TextStyle(
              fontSize: 25.0,
                fontFamily: 'CarterOne',
            ),
          ),
        ),
      ),
      body: Ball(),
      );
  }
}

  class Ball extends StatefulWidget{
   @override
     _BallState createState() => _BallState();
  }

  class _BallState extends State {
   int ballNumber = 1;
   @override
    Widget build(BuildContext context) {
     return Center(
       child: TextButton(
         onPressed: () {
           setState(() {
             ballNumber = Random().nextInt(5)+1;
           });
         },
       child: Image.asset('images/ball$ballNumber.png'),
     ),
     );
   }
 }