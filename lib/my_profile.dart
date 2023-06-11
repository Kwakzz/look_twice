// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:look_twice/edit_profile.dart';
import 'package:look_twice/my_emergency_info.dart';
import 'package:look_twice/riders.dart';
import 'package:look_twice/saved_routes.dart';
import 'package:look_twice/settings.dart';
import 'package:look_twice/first_page.dart';

class MyProfile extends StatefulWidget {

  Rider rider;

  MyProfile({super.key, required this.rider});

  @override
  State<MyProfile> createState() => MyProfileState();
}


class MyProfileState extends State<MyProfile> {

  File? _imageFile;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold (
          // backgroundColor: Color.fromARGB(255, 32, 221, 221),

          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  // PROFILE
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_sharp,
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
              actions: [
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings(rider: widget.rider)),
                    );
                  },
                ),
              ],          
          ),


          // BODY
          body: Stack(
            children: <Widget> [

              // BACKGROUND GRADIENT
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.black,  Color.fromARGB(255, 26, 163, 163)],
                    stops: [0.05, 0.65],
                    transform: GradientRotation(362.3),
                  ),
                ),
              ),

              // PROFILE PICTURE
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 610),
                child: Center(
               child: Stack(
                children: [
                  
                  CircleAvatar(
                    
                    child: _imageFile == null ? Icon(Icons.person, size: 160, color: Colors.white,) : null,
                    radius: 80,
                    backgroundColor: Color.fromARGB(255, 46, 39, 39),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      height: 30,
                      child: IconButton(
                        onPressed: () async {
                          // final ImagePicker _picker = ImagePicker();
                          // final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                          // setState(() {
                          //   _imageFile = File(image!.path);
                          // });                      
                        
                        },
                        
                        icon: Icon(Icons.add,
                        color: Colors.white,
                        size: 14,
                      )
                      ),
                    ),
                  ),
                ],
              )
              )
              ),

              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 380),
                child: Center(
                  child: Text(
                    widget.rider.getName().toUpperCase(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                  ),
                )
              ),


               // MY INFO CONTAINER
               Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 190),
                    height: 120,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),       
                    ),
                    child: Container(
                      child: Column(

                        children: [
                            // EMAIL AND LOOK TWICE ID ROW
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            
                            // MOBILE PHONE CONTAINER
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                              child: Column(
                                children: [

                                  // MOBILE PHONE TEXT
                                  Container(
                                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    child: Text(
                                      "Mobile Phone",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 32, 221, 221),
                                      )
                                    )
                                  ),

                                  // MOBILE PHONE
                                  Container(
                                    margin: EdgeInsets.fromLTRB(12, 5, 0, 0),
                                    child: Text(
                                      widget.rider.getPhone(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      )
                                    )
                                  ),
                                ]
                              )
                            ),


                            // HELMET NICKNAME CONTAINER
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 12, 20, 0),
                              child: Column(
                                children: [

                                  // HELMET NICKNAME TEXT
                                  Container(
                                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    child: Text(
                                      "Helmet Nickname",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 32, 221, 221),
                                      )
                                    )
                                  ),

                                  // Helmet Nickname
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 75, 0),
                                    child: Text(
                                      widget.rider.getHelmetNickname(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      )
                                    )
                                  ),
                                ]
                              )
                            ),
                            
                          ],
                    ),


                    // EMAIL AND LOOK TWICE ID ROW
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            
                            // EMAIL ADDRESS CONTAINER
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                              child: Column(
                                children: [

                                  // EMAIL ADDRESS TEXT
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                                    child: Text(
                                      "Email Adress",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 32, 221, 221),
                                      )
                                    )
                                  ),

                                  // EMAIL ADDRESS
                                  Container(
                                    margin: EdgeInsets.fromLTRB(29, 5, 0, 0),
                                    child: Text(
                                      widget.rider.getEmail(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      )
                                    )
                                  ),
                                ]
                              )
                            ),


                            // LOOK TWICE ID CONTAINER
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 12, 35, 0),
                              child: Column(
                                children: [

                                  // LOOK TWICE ID TEXT
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Text(
                                      "Look Twice ID",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 32, 221, 221),
                                      )
                                    )
                                  ),

                                  // LOOK TWICE ID
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 55, 0),
                                    child: Text(
                                      "G672YWE",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      )
                                    )
                                  ),
                                ]
                              )
                            ),
                            
                          ],
                    )



                        ],
                )
              )
            )
            ),



        // MY PROFILE BOX
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: 420,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 22, 21, 21),
                      ),

                      child: Column(
                        children: [
                    
                              // MY PROFILE TEXT
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 30, 270, 0),
                                child: Text(
                                  "My Profile",
                                  style: TextStyle(
                                    fontFamily: "Helvetica",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white
                                  ),
                                ),
                              ),


                          // MY PROFILE INFO CONTAINER
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            height: 80,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                             
                            ),
                            child: Container(
                              
                              child: Row(
                              children: [

                                // PROFILE ICON
                                Container(
                                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Icon(
                                    Icons.person,
                                    color: Color.fromARGB(255, 53, 242, 213)
                                  )
                                ),

                                // MY PROFILE INFO COLUMN
                                Container(
                                  margin: EdgeInsets.fromLTRB(15, 7, 0, 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 17, 0),
                                        child: Text(
                                        "My Profile Info",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )
                                      )
                                      ),

                                      Container(
                                        margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                        child: Text(
                                        "Edit your profile information",
                                        style: TextStyle(
                                          fontSize: 12,
                                          
                                          color: Colors.grey,
                                        )
                                      )
                                      ),

                                    ]
                                  )
                                ),

                                 // FORWARD ICON
                                Container(
                                  margin: EdgeInsets.fromLTRB(75, 0, 0, 0),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => EditProfile(rider: widget.rider)),
                                      );
                                    },
                                    icon: Icon(Icons.arrow_forward_ios,
                                    color: Color.fromARGB(255, 53, 242, 213)
                                  )
                                )
                                )

                              ],
                            ),
                            )
                            ),


                          // MY EMERGENCY INFO CONTAINER
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            height: 80,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                             
                            ),
                            child: Container(
                              
                              child: Row(
                              children: [

                                // EMERGENCY ICON
                                Container(
                                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Icon(
                                    Icons.safety_check,
                                    color: Color.fromARGB(255, 53, 242, 213)
                                  )
                                ),

                                // MY EMERGENCY INFO COLUMN
                                Container(
                                  margin: EdgeInsets.fromLTRB(15, 7, 0, 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 17, 0),
                                        child: Text(
                                        "My Emergency Info",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )
                                      )
                                      ),

                                      Container(
                                        margin: EdgeInsets.fromLTRB(25, 10, 0, 0),
                                        child: Text(
                                        "Edit your emergency information",
                                        style: TextStyle(
                                          fontSize: 12,
                                          
                                          color: Colors.grey,
                                        )
                                      )
                                      ),

                                    ]
                                  )
                                ),

                                 // FORWARD ICON
                                Container(
                                  margin: EdgeInsets.fromLTRB(48, 0, 0, 0),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyEmergencyInfo(rider: widget.rider)),
                                      );
                                    },
                                    icon: Icon(Icons.arrow_forward_ios,
                                    color: Color.fromARGB(255, 53, 242, 213)
                                  )
                                )
                                )

                              ],
                            ),
                            )
                            ),


                            // MY SAVED ROUTES CONTAINER
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            height: 80,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                             
                            ),
                            child: Container(
                              
                              child: Row(
                              children: [

                                // ROUTES ICON
                                Container(
                                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Icon(
                                    Icons.route,
                                    color: Color.fromARGB(255, 53, 242, 213)
                                  )
                                ),

                                // MY SAVED ROUTES COLUMN
                                Container(
                                  margin: EdgeInsets.fromLTRB(15, 7, 0, 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(25, 10, 17, 0),
                                        child: Text(
                                        "My Saved Routes",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )
                                      )
                                      ),

                                      Container(
                                        margin: EdgeInsets.fromLTRB(7, 10, 0, 0),
                                        child: Text(
                                        "Edit your saved routes",
                                        style: TextStyle(
                                          fontSize: 12,
                                          
                                          color: Colors.grey,
                                        )
                                      )
                                      ),

                                    ]
                                  )
                                ),

                                 // FORWARD ICON
                                Container(
                                  margin: EdgeInsets.fromLTRB(85, 0, 0, 0),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => SavedRoutes(rider: widget.rider)),
                                      );
                                    },
                                    icon:Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color.fromARGB(255, 53, 242, 213)
                                  )
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