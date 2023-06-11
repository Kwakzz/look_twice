// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:look_twice/riders.dart';



class Safety extends StatefulWidget {

  Rider rider;

  Safety({super.key, required this.rider});

  @override
  State<Safety> createState() => SafetyState();
}


class SafetyState extends State<Safety> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold (
          // backgroundColor: Color.fromARGB(255, 32, 221, 221),


          // BODY
          body: Stack(
            children: <Widget> [

              // BACKGROUND GRADIENT
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.black,  Color.fromARGB(255, 32, 221, 221)],
                    stops: [0.05, 0.65],
                    transform: GradientRotation(362.3),
                  ),
                ),
              ),

               // BOXES
                Center(
                  child: Column(
                  children: [

                // SOS ALERT BOX CONTAINER
                SizedBox(
                  height: 160,
                  width: 400,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 22, 21, 21),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // SOS ALERT BOX CONTENTS
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                
                                // SAFETY ICON
                                SizedBox(
                                  width: 50,
                                  child: Container( 
                                    margin: EdgeInsets.fromLTRB(20, 10, 0, 15),
                                  child: Icon(
                                      Icons.safety_check,
                                      color: Colors.red,
                                      size: 40,
                                  ),

                                  
                                  )
                                  ),

                                  // SOS ALERT DESCRIPTION
                                  Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: 
                                        Container(
                                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          child: Text(
                                          'You can trigger an SOS alert by pressing\nthis button. This also dials 911. In case of\na false signal, you can then click the “I\nAM OKAY” that pops below to send a\nmessage or alert to the emergency\ncontact that it was a false alert.',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          )
                                          ),
                                        ),
                                  
                            ),

                          // SOS BUTTON
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 30),
                            child: Image.asset(
                              './assets/sos.png',
                              height: 40,
                              width: 40,
                            )
                          ),
                          ]
                          ),


                          

                  ),
                ),



                // EMERGENCY SERVICES CONTAINER
                SizedBox(
                  height: 100,
                  width: 400,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // EMERGENCY SERVICES BOX CONTENTS
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                
                                // SAFETY ICON
                                SizedBox(
                                  width: 50,
                                  child: Container( 
                                    margin: EdgeInsets.fromLTRB(20, 10, 0, 15),
                                  child: Icon(
                                      Icons.call,
                                      color: Color.fromARGB(255, 32, 221, 221),
                                      size: 40,
                                  ),

                                  
                                  )
                                  ),

                                  // EMERGENCY SERVICES DESCRIPTION
                                  Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: 
                                        Container(
                                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          child: Text(
                                          'EMERGENCY SERVICES',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          )
                                          ),
                                        ),
                                  
                            ),

                          
                          ]
                          ),


                          

                  ),
                ),


                
              
              
            

            ]
            
              ),
          
        ),

        // SAFETY STATS BOX
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 22, 21, 21),
                      ),
                      child: Column(
                        children: [

                          // SAFETY TEXT AND EMERGENCY ICON
                          Row(
                            children: [

                              // SAFETY TEXT
                              Container(
                                margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                child: Text(
                                  "SAFETY",
                                  style: TextStyle(
                                    fontFamily: "Helvetica",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white
                                  ),
                                ),
                              ),

                              // EMERGENCY ICON
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Icon(
                                  Icons.call,
                                  color: Color.fromARGB(255, 32, 221, 221),
                                  size: 30,
                                )
                                )

                          ],
                          ),

                          // CONTAINER WITH HORIZONTAL DIVIDER
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            height: 150,
                            width: 400,
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Column(
                              children: [

                                // CRASH ALERT
                                    Container(
                                      margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                      child: Row (
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                          // CRASH ALERT
                                          child: Column(
                                            children: [

                                              // CRASH
                                              Text(
                                                "Crash",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                )
                                              ),

                                              // ALERT
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 5, 15, 0),
                                              child: Text(
                                                "Alert",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                )
                                              )
                                              ),
                                            ]
                                          )
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                                          child: Text(
                                            "0x",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(255, 53, 242, 213),
                                            ),
                                          )
                                        )
                                      ]
                                      )
                                    ),

                                // DIVIDER
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Divider(
                                    color: Colors.white,
                                    thickness: 1,
                                  )
                                ),

                                // SOS BEACON
                                Container(
                                      margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Row (
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                          // CRASH ALERT
                                          child: Column(
                                            children: [

                                              // SOS
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                              child: Text(
                                                "SOS",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                )
                                              )
                                              ),

                                              // BEACON
                                              Container(
                                                margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                              child: Text(
                                                "Beacon",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                )
                                              )
                                              ),
                                            ]
                                          )
                                        ),

                                        // 0X
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                                          child: Text(
                                            "0x",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(255, 53, 242, 213),
                                            ),
                                          )
                                        )
                                      ]
                                      )
                                    ),
                          
                        ])
                          ),


                          // HELMET DROPS CONTAINER
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            height: 80,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            child: Container(
                              
                              child: Row(
                              children: [

                                // HELMET ICON
                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Icon(
                                    Icons.sports_football_sharp,
                                    color: Colors.white
                                  )
                                ),

                                // HELMET DROPS TEXT
                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Text(
                                    "Helmet Drops",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )
                                  )
                                ),

                                 // HELMET DROPS NUMBER
                                Container(
                                  margin: EdgeInsets.fromLTRB(180, 0, 0, 0),
                                  child: Text(
                                    "0x",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 53, 242, 213),
                                    ),
                                  )
                                )

                              ],
                            ),
                            )
                            ),
                          
                    ]
                    ),

                    
                  )
                )
                )

              

        ]
        )
        )
        );  
                
  }
}