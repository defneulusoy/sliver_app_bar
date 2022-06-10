import 'package:flutter/material.dart';

import 'picture_cards/firstPic.dart';
import 'picture_cards/secondPic.dart';
import 'picture_cards/thirdPic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            leading: Icon(Icons.menu),
            title: Text('M Y  A P P'),
            elevation: 0,
            collapsedHeight: 100,
            expandedHeight: 300,
            stretch: true,
            forceElevated: false,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('hello'),
              background: Container(
                color: Colors.pink[400],
                child: Icon(Icons.announcement_rounded),
              ),
            ),
          ),
          //sliver items
          SliverToBoxAdapter(
              child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => firstPic()));
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text('pic 1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, color: Colors.deepPurple))),
                      height: 200,
                      color: Colors.lime,
                    ),
                  ),
                ],
              ),
            ),
          )),
          SliverToBoxAdapter(
               child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => secondPic()));
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text('pic 2',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, color: Colors.deepPurple))),
                      height: 200,
                      color: Colors.lime,
                    ),
                  ),
                ],
              ),
            ),
          )),
          SliverToBoxAdapter(
               child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => thirdPic()));
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text('pic 3',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, color: Colors.deepPurple))),
                      height: 200,
                      color: Colors.lime,
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
