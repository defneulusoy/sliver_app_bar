import 'package:flutter/material.dart';
import 'package:sliver_app_bar/pages/secondPage.dart';
import 'pages/firstPage.dart';
import 'picture_cards/firstPic.dart';
import 'picture_cards/secondPic.dart';
import 'picture_cards/thirdPic.dart';
import 'pages/secondPage.dart';

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
            //leading: Icon(Icons.menu),
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
                child: Icon(Icons.announcement_rounded, color: Colors.white,),
              ),
            ),
          ),
          //sliver items
          SliverToBoxAdapter(
              child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => firstPic()));
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => secondPic()));
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
                  context, MaterialPageRoute(builder: (context) => thirdPic()));
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
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                child: Text(
                  'D E F N E',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              )),
              ListTile(
                leading: Icon(Icons.music_note, size: 20, color: Colors.white),
                title: Text(
                  'Page 1',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => firstPage())));
                },
              
              ),
              ListTile(
                leading: Icon(Icons.airplay_rounded, color: Colors.white,),
                title: Text(
                  'Page 2',
                style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white ),
              ),
              onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => secondPage())));
                })
            ],
          ),
        ),
      ),
    );
  }
}
