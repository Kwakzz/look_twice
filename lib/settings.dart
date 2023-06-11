// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:look_twice/change_password.dart';
import 'package:look_twice/first_page.dart';
import 'package:look_twice/sign_in.dart';
import 'package:look_twice/riders.dart';


class Settings extends StatefulWidget {

  Rider rider;

  Settings({super.key, required this.rider});

  @override
  State<Settings> createState() => SettingsState();
}


class SettingsState extends State<Settings> {

  bool _notifSwitchValue = false;
  bool _collectDataSwitchValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold (
          backgroundColor: Color.fromARGB(255, 35, 48, 48),

          // APP BAR WITH BACK AND SAVE BUTTONS
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

                  // SAVE
                  Container(
                    margin: EdgeInsets.fromLTRB(240, 5, 0, 0),
                    height: 30,
                    width: 100,
                    child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 24, 153, 121),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FirstPage(rider: widget.rider)),
                        );
                      },
                    )
                ),

                ],
              ),
          ),


          // BODY
          body: 

             // COLUMN
             Column(
              children: [

                // SETTINGS
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 280, 0),
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Helvetica-Bold",
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


                // SETTINGS COLUMN
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

                    // CHANGE PASSWORD BOX CONTENTS
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                              children: [
        
                                  // CHANGE PASSWORD TEXT AND DESCRIPTION
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 22, 0, 0),
                                    child: Column(
                                      children: [

                                        // CHANGE PASSWORD TEXT
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 65, 0),
                                          child:Text(
                                            'Change Password',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                              ),
                                          )
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text(
                                          'Click here to change your password',
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
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 0, 0, 0),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ChangePassword(rider: widget.rider)),
                                );
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
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



             // SHOW NOTIFICATIONS BOX
             Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
             child: Center(
                  child: Column(
                  children: [

                // SHOW NOTIFICATIONS CONTAINER
                SizedBox(
                  height: 90,
                  width: 400,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // SHOW NOTIFICATIONS CONTENTS
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                              children: [
        
                                  // SHOW NOTIFICATIONS TEXT AND DESCRIPTION
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 22, 0, 0),
                                    child: Column(
                                      children: [

                                        // SHOW NOTIFICATIONS TEXT
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 87, 0),
                                          child:Text(
                                            'Show Notifications',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                              ),
                                          )
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text(
                                          'Background and foreground notifications',
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


                          // SWITCH 
                          Container(
                            margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Switch(
                              value: _notifSwitchValue,
                              onChanged: (bool value) {
                                setState(() {
                                  _notifSwitchValue = value;
                                });
                              },
                              activeColor: Color.fromARGB(255, 11, 248, 189),
                            ),
                          )
                          ]
                          )

                  ),
                )
              
                ],

             )
             ),
             ),


             // COLLECT DATA BOX
             Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
             child: Center(
                  child: Column(
                  children: [

                // COLLECT DATA CONTAINER
                SizedBox(
                  height: 90,
                  width: 400,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // COLLECT DATA CONTENTS
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                              children: [
        
                                  // COLLECT DATA TEXT AND DESCRIPTION
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 22, 0, 0),
                                    child: Column(
                                      children: [

                                        // COLLECT DATA TEXT
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 127, 0),
                                          child:Text(
                                            'Collect Data',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                              ),
                                          )
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text(
                                          'Enable or disable riding data collection',
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


                          // SWITCH 
                          Container(
                            margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
                            child: Switch(
                              value: _collectDataSwitchValue,
                              onChanged: (bool value) {
                                setState(() {
                                  _collectDataSwitchValue = value;
                                });
                              },
                              activeColor: Color.fromARGB(255, 11, 248, 189),
                            ),
                          )
                          ]
                          )

                  ),
                )
              
                ],

             )
             ),
             ),


              // USER MANUAL BOX
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Center(
                  child: Column(
                  children: [

                // USER MANUAL CONTAINER
                SizedBox(
                  height: 90,
                  width: 400,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // USER MANUAL BOX CONTENTS
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                              children: [
        
                                  // USER MANUAL TEXT AND DESCRIPTION
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 22, 0, 0),
                                    child: Column(
                                      children: [

                                        // USER MANUAL TEXT
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 130, 0),
                                          child:Text(
                                            'User Manual',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                              ),
                                          )
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text(
                                          'Learn how to use the mobile application',
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
                          Container(
                            margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
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
             )
             ),


             // LOG OUT BOX
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Center(
                  child: Column(
                  children: [

                // LOG OUT CONTAINER
                SizedBox(
                  height: 90,
                  width: 400,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // LOG OUT BOX CONTENTS
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                              children: [
        
                                  // LOG OUT TEXT AND DESCRIPTION
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 22, 0, 0),
                                    child: Column(
                                      children: [

                                        // USER MANUAL TEXT
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 140, 0),
                                          child:Text(
                                            'Log Out',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                              ),
                                          )
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text(
                                          'Sign out of your look twice account',
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


                          // LOG OUT ICON
                          Container(
                            margin: EdgeInsets.fromLTRB(95, 0, 0, 0),
                            child: IconButton(
                              onPressed: () {
                                showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Are you sure you want to log out?"),
                                              content: Text("Click OK to confirm."),
                                              actions: [

                                                // CONFIRM LOG OUT
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => SignIn()),
                                                  );
                                                  },
                                                  child: Text("OK"),
                                                ),

                                                // CANCEL LOG OUT
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text("Cancel"),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                              },
                              icon: Icon(
                                Icons.logout,
                                size: 30,
                                color: Colors.red,
                              )
                            )
                          )
                          ]
                          )

                  ),
                )
              
                ],

             )
             )
             ),


             // DELETE ACCOUNT BOX
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Center(
                  child: Column(
                  children: [

                // DELETE ACCOUNT CONTAINER
                SizedBox(
                  height: 90,
                  width: 400,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // DELETE ACCOUNT BOX CONTENTS
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                              children: [
        
                                  // DELETE ACCOUNT TEXT AND DESCRIPTION
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 22, 0, 0),
                                    child: Column(
                                      children: [

                                        // DELETE ACCOUNT TEXT
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 140, 0),
                                          child:Text(
                                            'DELETE ACCOUNT',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold
                                              ),
                                          )
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                          child: Text(
                                          'Your request will be processed within 24 hours',
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


                          // DELETE ICON
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: IconButton(
                              onPressed: () {
                                showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Are you sure you want to delete your account?"),
                                              content: Text("Click Delete Account to confirm."),
                                              actions: [

                                                // CONFIRM DELETE
                                                TextButton(
                                                  onPressed: () {


                                                    // ENTER LOOK TWICE ID TO CONFIRM DELETION
                                                     showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Enter Look Twice ID to confirm deletion: G67191JK"),
                                              content: TextFormField(
                                                decoration: InputDecoration(
                                                  hintText: 'Enter Look Twice ID',
                                                  hintStyle: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                              actions: [

                                                // CONFIRM DELETE
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => SignIn()),
                                                  );
                                                  },
                                                  child: Text(
                                                    "Confirm Deletion",
                                                    style: TextStyle(
                                                      color: Colors.red,
                                                      fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),

                                                // CANCEL DELETE
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Settings(rider: widget.rider)),
                                                  );
                                                  },
                                                  child: Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );

                                                    
                                                  },
                                                  child: Text(
                                                    "Delete Account",
                                                    style: TextStyle(
                                                      color: Colors.red,
                                                      fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                              


                                                // CANCEL DELETE
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    "Keep Account",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold
                                                    )
                                                    )
                                                ),
                                              ],
                                            );
                                          },
                                        );
                              },
                              icon: Icon(
                                Icons.delete,
                                size: 30,
                                color: Colors.red,
                              )
                            )
                          )
                          ]
                          )

                  ),
                )
              
                ],

             )
             )
             ),


          
                         
             ],
             )
            
              
              )
                          );


                
  }
}