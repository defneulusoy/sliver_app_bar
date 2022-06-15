import 'package:flutter/material.dart';


class secondPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pop(context);},
      child: Scaffold(
        backgroundColor: Colors.indigo,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(
              'how are you?', 
              style: TextStyle(
                color: Color.fromARGB(255, 7, 255, 238),
                 fontSize: 30,
                 fontWeight: FontWeight.bold),)])
        ],
      )),
    );
  }
}