// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:look_twice/dashboard.dart';
import 'package:look_twice/data.dart';
import 'package:look_twice/my_profile.dart';
import 'package:look_twice/ride.dart';
import 'package:look_twice/riders.dart';
import 'package:look_twice/safety.dart';
import 'package:look_twice/settings.dart';
import 'package:look_twice/notifications.dart';


class FirstPage extends StatefulWidget {

  Rider rider;

  FirstPage({super.key, required this.rider});

  @override
  State<FirstPage> createState() => FirstPageState();
}


class FirstPageState extends State<FirstPage> {


  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  int _currentIndex = 0;
  List<Widget> widgetOptions = [];


  @override
  void initState() {
    super.initState();
    widgetOptions = <Widget>[
      Dashboard(rider: widget.rider),
      Data(rider: widget.rider),
      Safety(rider: widget.rider),
      Ride(rider: widget.rider),
    ];
  }
  

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        title: "Look Twice",
        home: Scaffold (
          // backgroundColor: Color.fromARGB(255, 32, 221, 221),


          // APP BAR WITH PROFILE, NOTIFICATIONS, AND SETTINGS
           appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  // PROFILE
                  IconButton(
                    icon: Icon(
                      Icons.person,
                      semanticLabel: "Profile"
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyProfile(rider: widget.rider)),
                        );
                      },
                  ),

                  // NOTIFICATIONS
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      semanticLabel: "Notifications"
                      ), onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Notifications(rider: widget.rider)),
                        );
                      },
                  )
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings(rider: widget.rider,)),
                    );
                  },
                ),
              ],          
          ),


          // BODY
          body: widgetOptions[_currentIndex],
          
        
          // BOTTOM NAVIGATION BAR
          bottomNavigationBar: BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Data',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.safety_check),
            label: 'Safety',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.route),
            label: 'Ride',
            backgroundColor: Colors.black
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 17, 236, 207),
      ),
        )
        );  
                
  }
}