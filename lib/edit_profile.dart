// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:look_twice/my_profile.dart';
import 'package:look_twice/riders.dart';


class EditProfile extends StatefulWidget {

  Rider rider;

  EditProfile({super.key, required this.rider});

  @override
  State<EditProfile> createState() => EditProfileState();
}


class EditProfileState extends State<EditProfile> {

  String _bloodGroupType = "A";

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

                // EDIT PROFILE INFO
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 160, 0),
                  child: Text(
                    "Edit Profile Info",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Helvetica-Bold",
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


                // INFO
                Center(
                 child: SizedBox(
                  height: 520,
                  width: 350,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 22, 21, 21),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column (
                      children: [

                        // LOOK TWICE ID
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 70, 0),
                          child: Text(
                            "Look Twice ID: 673VGSHLK",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromARGB(255, 53, 242, 213),
                              fontFamily: "Helvetica-Bold",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ),

                 


                      // NAME TEXT FIELD
                      SizedBox(
                        width: 270,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(   
                            initialValue: widget.rider.getName(),
                            enabled: false,                       
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


                      // EMAIL TEXT FIELD
                      SizedBox(
                        width: 270,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            initialValue: widget.rider.getEmail(),
                            enabled: false,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Helvetica",
                                fontSize: 15,
                              ),
                            ),
                          ),
                        )
                      ),


                      // PHONE NUMBER TEXT FIELD
                      SizedBox(
                        width: 270,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            initialValue: widget.rider.getPhone(),
                            onChanged: (value) => widget.rider.setPhone(value),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Helvetica",
                                fontSize: 15,
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10),
                            ],
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
                                widget.rider.bloodGroup = value!;
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
                                MaterialPageRoute(builder: (context) => MyProfile(rider: widget.rider,)),
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


              ]
              )
              )
              );
                          

                
  }
}