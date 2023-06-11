// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:look_twice/riders.dart';


class Data extends StatefulWidget {

  Rider rider;

  Data({super.key, required this.rider});

  @override
  State<Data> createState() => DataState();
}


class DataState extends State<Data> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold (
          backgroundColor: Color.fromARGB(255, 35, 48, 48),


          // BODY
          body: 

             // COLUMN
             Column(
              children: [

                // PERFORMANCE
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 220, 0),
                  child: Text(
                    "Performance",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Helvetica-Bold",
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // LT SCORE BOX
                Center(
                  child: Column(
                  children: [

                // LT SCORE BOX CONTAINER
                SizedBox(
                  height: 130,
                  width: 400,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // LT SCORE BOX CONTENTS
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                
                                // PROFILE ICON
                                SizedBox(
                                  width: 50,
                                  child: Container( 
                                    margin: EdgeInsets.fromLTRB(20, 10, 0, 15),
                                  child: Icon(
                                      Icons.account_circle,
                                      color: Colors.white,
                                      size: 70,
                                  ),

                                  
                                  )
                                  ),

                                  // LT SCORE TEXT AND DESCRIPTION
                                  Container(
                                    margin: EdgeInsets.fromLTRB(60, 15, 0, 0),
                                    child: Column(
                                      children: [

                                        // LT SCORE TEXT
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 160, 0),
                                          child:Text(
                                            'LT Score',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                              ),
                                          )
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text(
                                          'This is a score based on riding\nperformance. The performance points\nwill be based on comparisons with road\nspeed limits and normal ride time. It will\nhelp improve safety on the road.',
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


                          // FORWARD ICON
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.white,
                            )
                            )
                          ]
                          )

                  ),
                )
              
                ],

             )
             ),

             // RIDE ANALYTICS
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 80, 0),
                  child: Text(
                    "Ride Analytics",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Helvetica-Bold",
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text(
                    "Last 7 rides",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Helvetica",
                      fontSize: 12,

                    ),
                  ),
                ),
              ],
             ),

             




                          // DISTANCE TRAVELLED BOX
                          Center(
                          child: Container(
                            height: 100,
                            width: 400,
                            margin: EdgeInsets.fromLTRB(20,20,20,0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                
                                // RIDE ICON
                                SizedBox(
                                  width: 50,
                                  child: Container( 
                                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Icon(
                                    Icons.route,
                                    color: Color.fromARGB(255, 23, 216, 213),
                                    size: 30,
                                  ),
                                  )
                                  ),

                                  // DISTANCE TEXT AND SUBTITLE
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 35, 0, 0),
                                    child: Column(
                                      children: [

                                        // DISTANCE
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 160, 0),
                                        child: Text(
                                          'Distance',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                            ),
                                        )
                                        ),

                                        // SUBTITLE
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text(
                                          'Total distance covered in the last 7 rides',
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

                          // DISTANCE IN KM
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                            "0km",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                              ),
                            ),
                            )
              ]
              )
                          )
                          ),


                          // RIDING TIME BOX
                          Center(
                          child: Container(
                            height: 100,
                            width: 400,
                            margin: EdgeInsets.fromLTRB(20,30,20,0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                
                                // TIME ICON
                                SizedBox(
                                  width: 50,
                                  child: Container( 
                                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Icon(
                                    Icons.access_time,
                                    color: Color.fromARGB(255, 23, 216, 213),
                                    size: 30,
                                  ),
                                  )
                                  ),

                                  // RIDING TIME TEXT AND SUBTITLE
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 35, 0, 0),
                                    child: Column(
                                      children: [

                                        // RIDING TIME
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 160, 0),
                                        child: Text(
                                          'Riding Time',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                            ),
                                        )
                                        ),

                                        // SUBTITLE
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 45, 0),
                                          child: Text(
                                          'Total riding time for the last 7 rides',
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

                          // TIME 
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text(
                            "00h",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                              ),
                            ),
                            )
              ]
              )
                          )
                          )

             ],
             )
            
              
              )
                          );


                
  }
}