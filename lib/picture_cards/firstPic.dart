import 'package:flutter/material.dart';
import 'package:sliver_app_bar/homepage.dart';

class firstPic extends StatefulWidget {
  @override
  State<firstPic> createState() => _firstPicState();
}

class _firstPicState extends State<firstPic> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      }
      ,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 177, 193),
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'hello',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 122, 21),
                 fontSize: 30, fontWeight: FontWeight.bold),
            )
          ])
        ],
      )),
    );
  }
}
