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
      /* Navigator.push(
        context, MaterialPageRoute(
          builder: (context) => const HomePage())) */
      ,
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'hello',
              style: TextStyle(color: Colors.amber, fontSize: 30),
            )
          ])
        ],
      )),
    );
  }
}
