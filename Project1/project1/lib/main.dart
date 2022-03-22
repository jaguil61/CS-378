/*
Jose M. Aguilar (jaguil61)
CS 378 - Project 1

Description:
Design and implement an App about what to see,where to sleep and
what to eat in Chicago. You will design a home screen that allows
the user to select one of three choices in each of three categories:
EAT, SLEEP and SEE; and nine additional screens to display the
information about each.
*/

import 'package:flutter/material.dart';
import 'EatTab.dart';
import 'SleepTab.dart';
import 'SeeTab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Project 1',
      home: Homepage()
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}): super (key: key);

  @override
  Widget build(BuildContext context)  {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff32353b),
        appBar:
            PreferredSize (
              preferredSize: const Size.fromHeight(125),
              child:
                  AppBar(
                    centerTitle: true,
                    title: const Text('Welcome to Chicago', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,  color: Colors.black)),
                    flexibleSpace: Container( //The image background for the appbar
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(75), //round the edges of the image too
                        image: const DecorationImage (
                            image: AssetImage('images/willis_tower.png'),
                            fit: BoxFit.fill
                        )
                      )
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75)), //The rounded edges for the appbar
                    bottom: TabBar(
                      isScrollable: true,
                        indicator: BoxDecoration(
                          color: const Color.fromARGB(175, 140, 178, 255),
                          borderRadius: BorderRadius.circular(75)
                        ),
                        tabs: const [
                          Tab(child: Text('EAT', style: TextStyle(fontSize: 16.5))),
                          Tab(child: Text('SLEEP', style: TextStyle(fontSize: 16.5))),
                          Tab(child: Text('SEE', style: TextStyle(fontSize: 16.5)))
                        ])
                  )
            ),
          body: TabBarView(children: [
            eatTab(context),
            sleepTab(context),
            seeTab(context)
          ])
      )
    );
  }

  
}



