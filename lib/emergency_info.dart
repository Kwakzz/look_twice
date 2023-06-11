// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:look_twice/add_helmet.dart';
import 'package:look_twice/signup.dart';


class EmergencyInfo extends StatefulWidget {


  EmergencyInfo({super.key});

  @override
  State<EmergencyInfo> createState() => EmergencyInfoState();
}


class EmergencyInfoState extends State<EmergencyInfo> {

  String _bloodGroupType = 'A';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        title: "Look Twice",
        home: Scaffold (

          // appBar: AppBar(
          //   backgroundColor: Colors.black,
          //   title: const Text(
          //     "Look Twice",
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontFamily: "Days One",
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //   ),


          // EMERGENCY INFO FORM ON BACKGROUND PICTURE
          body: Stack(
            children: [

              // BACKGROUND PICTURE
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                  "./assets/backgroundrider2.jpeg",
              ),
              fit: BoxFit.cover,
              )
              )
              ),

              // LOOK TWICE LOGO
              Container(
                margin: EdgeInsets.fromLTRB(50, 90, 0, 0),
                child: Text(
                  "LOOK TWICE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Days One",
                    fontSize: 30,
                    shadows: [
                      Shadow(
                        blurRadius: .0,
                        color: Colors.black,
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),

              // GREEN LINE UNDER LOGO
                Container(
                  margin: EdgeInsets.fromLTRB(50, 130, 0, 0),
                height: 10,
                width: 70, 
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 24, 153, 121),
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 24, 153, 121),
                      width: 1,
                    ),
                  ),
                ),
              ),

              Center(

                child: Column(

                // EMERGENCY INFO FORM
                children: [
                  SizedBox(
                  height: 590,
                  width: 350,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 180, 0, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 22, 21, 21),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column (
                      children: [

                        // EMERGENCY INFO
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 170, 0),
                          child: Text(

                            "EMERGENCY INFO",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Helvetica-Bold",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ),

                        // SELECT YOUR BLOOD GROUP
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 185, 0),
                          child: Text(
                            "Select your blood group",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Helvetica",
                              fontSize: 10.5,
                            ),
                          )
                        ),


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


                      // ADD EMERGENCY CONTACTS (MINIMUM 1)
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 120, 0),
                        child: Text(
                          "Add emergency contacts (minimum 1)",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Helvetica",
                            fontSize: 10.5,
                          ),
                          )
                      ),


                      // PLUS ICON
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 255, 0),
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


                      // HELP TEXT
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 20, 0),
                        child: Text(
                          "Why we need emergency contacts - To ensure that\nemergency alerts for Automatic Crash Detection and SOS\nBeacon are sent by SMS and Email to your trusted contact",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Helvetica",
                            fontSize: 11,
                          ),
                        )
                      ),

               

                      // DONE BUTTON
                        SizedBox(
                          width: 305,
                          height: 80,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 170, 20),
                            child: ElevatedButton(
                              onPressed:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AddHelmet()),
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
                                  
                          )
                        )
                      ),

                              
                    ]
                  )
                )
                      
              ),



              // CANCEL? ALL SAVED CHANGES WILL BE LOST BOX
                      SizedBox(
                        height: 140,
                        width: 350,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 24, 153, 121),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          // CANCEL? ALL SAVED CHANGES WILL BE LOST TEXT
                          child: Column(
                            children: [

                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 75, 0),
                          
                                  child: Text(
                                  "Cancel? All saved changes will be lost",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Helvetica",
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ),

                      // CANCEL BUTTON    
                      SizedBox(
                        width: 305,
                        height: 80,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 170, 20),
                          child: ElevatedButton(
                            onPressed:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => (SignUp())),
                              );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                          ),
                          child: Text(
                            "CANCEL",
                            style: TextStyle(
                              color: Color.fromARGB(255, 24, 153, 121),
                              fontFamily: "Helvetica",
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                        )
                      )
                      )

                              
                            ],
                          ),
                        ),
                      )


            ]
            
            ),
            
        
              )
          ])
        )
  
          );  
                
  }
}