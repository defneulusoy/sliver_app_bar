import 'package:flutter/material.dart';
import 'package:sliver_app_bar/buttons/morphButton.dart';
import 'package:sliver_app_bar/homepage.dart';

class secondPage extends StatefulWidget {
  
  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
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
            isButtonPressed: isButtonPressed
            ),

        ),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
