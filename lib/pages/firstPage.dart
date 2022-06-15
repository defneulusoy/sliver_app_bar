import 'package:flutter/material.dart';
import 'package:sliver_app_bar/homepage.dart';

import '../buttons/morphButton.dart';

class firstPage extends StatefulWidget {
  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {

  bool isButtonPressed = false;
  void buttonPressed(){
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } 

      else if (isButtonPressed==true) {
        isButtonPressed = false;
      }
    });


  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
          body: Center(
          child: morphButton(
          onTap: buttonPressed,
          isButtonPressed: isButtonPressed,

          ),
    ),
    backgroundColor:
    Colors.indigo[200]
    ),
    );
  }
}
