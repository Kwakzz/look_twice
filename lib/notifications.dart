// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:look_twice/first_page.dart';
import 'package:look_twice/riders.dart';


class Notifications extends StatefulWidget {

  Rider rider;
  Notifications({super.key, required this.rider});

  @override
  State<Notifications> createState() => NotificationsState();
}


class NotificationsState extends State<Notifications> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold (
          backgroundColor: Color.fromARGB(255, 35, 48, 48),

          // APP BAR WITH PROFILE, NOTIFICATIONS, AND SETTINGS
           appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  // BACK
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      semanticLabel: "Back"
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FirstPage(rider: widget.rider)),
                        );
                      },
                  ),

                ],
              ),
          ),


          // BODY
          body: 

             // COLUMN
             Column(
              children: [

                // ALL ALERTS
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 230, 0),
                  child: Text(
                    "All Alerts",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Helvetica-Bold",
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


                // EMERGENCY INFO COLUMN
                Center(
                 child: 
                        Container(
                          height: 100,
                        child: ListView.builder(
                  
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [

                          // ALERT
                          Container(
                            height: 80,
                            width: 380,
                            margin: EdgeInsets.fromLTRB(0,20,0,0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                
                                // PERSON ICON
                                SizedBox(
                                  width: 50,
                                  child: Container( 
                                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Icon(
                                    Icons.person_2,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  )
                                  ),

                                  // EMERGENCY CONTACT
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 25, 0, 0),
                                    child: Column(
                                      children: [

                                        // NAME
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                                          child:Text(
                                            'Michael Boateng',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                              ),
                                          )
                                        ),

                                        // EMAIL
                                        Container(
                                          margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
                                          child: Text(
                                          'michael.boateng@gmail.com',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          )
                                          ),
                                        ),
                                  ],
                            ),
                          ),

                          // CLOSE ICON
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.close,
                              size: 20,
                              color: Colors.white,
                            )
                            )
                          )
                          
                          ]
                          )
                          ),


                         
                      ]
                      );
                    },
                  ),
                  

                        
             ))]
             
             )
             ),
              );
       
  }
}