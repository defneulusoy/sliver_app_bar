import 'package:flutter/material.dart';

class morphButton extends StatelessWidget {
  final onTap;
  bool isButtonPressed;

  morphButton({this.onTap, required this.isButtonPressed});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
    
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 100,
        width: 100,
        child: Icon(
          Icons.auto_awesome_rounded,
          size: 50,
          color: isButtonPressed? Colors.indigo: Colors.indigo[400],
        ),
        decoration: BoxDecoration(
            color: Colors.indigo[200],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isButtonPressed ? Colors.indigo.shade100 : Colors.indigo.shade300
            ),
            boxShadow: isButtonPressed ? [] : [ //if button s pressed, no shadow
              BoxShadow(
                  color: Colors.indigo.shade300,
                  offset: const Offset(6, 6),
                  blurRadius: 15,
                  spreadRadius: 1),
              BoxShadow(
                  color: Colors.indigo.shade100,
                  offset: const Offset(-6, -6),
                  blurRadius: 15,
                  spreadRadius: 1)
            ]),
      ),
    );
  }
}
