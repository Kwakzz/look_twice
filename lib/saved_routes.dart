// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:look_twice/my_profile.dart';
import 'package:look_twice/riders.dart';


class SavedRoutes extends StatefulWidget {

  Rider rider;

  SavedRoutes({super.key, required this.rider});

  @override
  State<SavedRoutes> createState() => SavedRoutesState();
}


class SavedRoutesState extends State<SavedRoutes> {


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
                          MaterialPageRoute(builder: (context) => MyProfile(rider: widget.rider,)),
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

                // SAVED ROUTES
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 220, 0),
                  child: Text(
                    "Saved Routes",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Helvetica-Bold",
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


                // ROUTES COLUMN
                Center(
                  child: Column(
                  children: [

                // CHANGE PASSWORD CONTAINER
                SizedBox(
                  height: 90,
                  width: 400,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // SAVED ROUTES CONTENTS
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                              children: [
        
                                  // SAVED ROUTES TEXT AND DESCRIPTION
                                  Container(
                                    margin: EdgeInsets.fromLTRB(20, 22, 0, 0),
                                    child: Column(
                                      children: [

                                        // ADD ROUTE TEXT
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 65, 0),
                                          child:Text(
                                            'Add route',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                              ),
                                          )
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                          child: Text(
                                          'Click plus icon to add a route',
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


                          // ADD ICON
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 0, 0, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              )
                            )
                          )
                          ]
                          )

                  ),
                )
              
                ],

             )
             ),
                         
             ],
             )
            
              
              )
                          );


                
  }
}