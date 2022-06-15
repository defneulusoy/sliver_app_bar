import 'package:flutter/material.dart';

class thirdPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pop(context);},
      child: Scaffold(
        backgroundColor: Colors.cyan,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(
              'hello', style: TextStyle(
                color: Colors.red[300],
                 fontSize: 30,
                 fontWeight: FontWeight.bold),)])
        ],
      )),
    );
  }
}