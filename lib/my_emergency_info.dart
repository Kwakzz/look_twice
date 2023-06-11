// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:look_twice/my_profile.dart';
import 'package:look_twice/riders.dart';


class MyEmergencyInfo extends StatefulWidget {
  
  Rider rider;
  MyEmergencyInfo({super.key, required this.rider});

  @override
  State<MyEmergencyInfo> createState() => MyEmergencyInfoState();
}


class MyEmergencyInfoState extends State<MyEmergencyInfo> {

  String _bloodGroupType = 'A';


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
                          MaterialPageRoute(builder: (context) => MyProfile(rider: widget.rider)),
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

                // EMERGENCY INFO
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 210, 0),
                  child: Text(
                    "Emergency Info",
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
                 child: SizedBox(
                  height: 490,
                  width: 350,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 22, 21, 21),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column (
                      children: [
                       // BLOOD GROUP TYPE FIELD
                      SizedBox(
                        width: 270,
                        height: 80,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: DropdownButtonFormField(
                            value: _bloodGroupType,
                            items: const [
                              DropdownMenuItem(value: 'A', child: Text('A')),
                              DropdownMenuItem(value: 'B', child: Text('B')),
                              DropdownMenuItem(value: 'O ', child: Text('O')),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _bloodGroupType = value!;
                              });
                            },
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Blood Group',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Helvetica",
                                fontSize: 15,
                              ),
                            ),
                            dropdownColor: Colors.black,
                          ),
                        )
                      ),

                        // ADD EMERGENCY CONTACTS
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 70, 0),
                          child: Text(
                            "Add emergency contacts (minimum 1)",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Helvetica",
                              fontSize: 12,
                            ),
                          )
                        ),


                        // PLUS ICON
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 245, 0),
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                        child: InkWell(
                          onTap:() => {

                            // DIALOG BOX
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Material(
                                  color: Colors.white.withOpacity(0.7),
                                  child:AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    backgroundColor: Colors.black87,
                                    title: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        // ADD EMERGENCY CONTACT
                                        Text(
                                          "Add Emergency Contact",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Helvetica",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),

                                        // CLOSE ICON
                                        IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.close,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),

                                    content: SizedBox(
                                      height: 400,
                                      width: 410,
                                      
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [

                                      // NAME
                                      SizedBox(
                                        width: 270,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: TextFormField(
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              labelText: 'Name',
                                              labelStyle: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "Helvetica",
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        )
                                      ),


                                      // MOBILE NUMBER
                                      SizedBox(
                                        width: 270,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 15, 10, 0),
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: TextFormField(
                                            keyboardType: TextInputType.phone,
                                            
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              labelText: 'Mobile Number',
                                              labelStyle: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "Helvetica",
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        )
                                      ),


                                      // EMAIL ADDRESS
                                      SizedBox(
                                        width: 270,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 15, 10, 0),
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: TextFormField(
                                            keyboardType: TextInputType.emailAddress,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              labelText: 'Email Address',
                                              labelStyle: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "Helvetica",
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        )
                                      ),




                                      // HELP TEXT
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 30, 20, 0),
                                        child: Text(
                                          "Look Twice App will send an emergency alert to this\nemail address in addition to an SMS and in-app push\nnotifications.\nYou will be redirected to your SMS app to send a request\nto your emergency contact to accept emergency alerts\nfrom you. Return to the app once you are done with that\nstep.",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Helvetica",
                                            fontSize: 11,
                                          ),
                                        )
                                      ),


                                      // ADD BUTTON
                                      SizedBox(
                                          width: 420,
                                          height: 60,
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(0, 20, 200, 5),
                                            child: ElevatedButton(
                                              onPressed:(){
                                                Navigator.pop(context);
                                              },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color.fromARGB(255, 24, 153, 121),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                              )
                                            ),
                                            child: Text(
                                              "ADD",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Helvetica",
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                                  
                                          )
                                        )
                                      ),
                                    ]),
                                    )
                                  
                                )
                                );
                                
                                
                              }

                              )
                          },
                          child: Icon(
                            Icons.add_circle_outline,
                            color: Color.fromARGB(255, 24, 153, 121),
                            size: 50,
                          ),
                        )
                        
                      )
                      ),


                        Container(
                          height: 100,
                        child: ListView.builder(
                  
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [

                          // 1ST RECTANGLE
                          Container(
                            height: 80,
                            width: 300,
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
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Icon(
                                    Icons.person_2,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  )
                                  ),

                                  // EMERGENCY CONTACT
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 25, 0, 0),
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

                          // REMOVE ICON
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_circle,
                              size: 20,
                              color: Colors.red,
                            )
                            )
                          )
                          
                          ]
                          )
                          ),


                         
                      ]
                      );
                    },
                  )
                  ),


                  // HELP TEXT
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Text(
                      "Why we need emergency contacts - To ensure that\nemergency alerts for Automatic Crash Detection and SOS\nBeacon are sent by SMS and Email to your trusted contact",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Helvetica",
                        fontSize: 12,
                      ),
                    ),
                  ),

                        


                      // DONE BUTTON
                      SizedBox(
                        width: 260,
                        height: 90,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 120, 20),
                          child: ElevatedButton(
                            onPressed:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyProfile(rider: widget.rider)),
                              ); 
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 24, 153, 121),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                          ),
                          child: Text(
                            "DONE",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Helvetica",
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                 
                    
                          
                      
                      )
                      ),
             ]
             
             )
             ),
              )
              )
                         
             ],
             )
            
              
              )
            );


                
  }
}