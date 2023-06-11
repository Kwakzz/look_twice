// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:look_twice/sign_in.dart';

TextEditingController nicknameController = TextEditingController();


class AddHelmet extends StatefulWidget {
  const AddHelmet({super.key});

  @override
  State<AddHelmet> createState() => AddHelmetState();
}


class AddHelmetState extends State<AddHelmet> {

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


          // ADD HELMET FORM ON BACKGROUND PICTURE
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

                // ADD HELMET FORM
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

                        // ADD LOOK TWICE HELMET
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 110, 20),
                          child: Text(

                            "ADD LOOK TWICE HELMET",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Helvetica-Bold",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ),
                        
                        // HELMET IMAGE
                          Image.asset(
                            './assets/helmet2.png',
                            height: 180,
                            width: 180,
                          ),
                        

                      // NICKNAME FIELD
                      SizedBox(
                        width: 270,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 25, 0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            controller: nicknameController,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Nickname',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Helvetica",
                                fontSize: 15,
                              ),
                            ),
                          ),
                        )
                      ),


                      // ADD BUTTON
                        SizedBox(
                          width: 255,
                          height: 80,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 130, 20),
                            child: ElevatedButton(
                              onPressed:(){
                                if (nicknameController.text.isNotEmpty) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignIn()),
                                  );
                                  nicknameController.clear();
                                }
                                else {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Error"),
                                        content: Text("Please enter a nickname"),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Close"),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
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

                              
                    ]
                  )
                )
                      
              ),



              // WANT TO SKIP HELMET SETUP
              SizedBox(
                height: 140,
                width: 350,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 153, 121),
                    borderRadius: BorderRadius.circular(20),
                  ),

                // WANT TO SKIP HELMET SETUP?
                  child: Column(
                    children: [

                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 130, 0),
                          
                        child: Text(
                          "Want to skip helmet setup?",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Helvetica",
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // SKIP BUTTON    
                      SizedBox(
                        width: 295,
                        height: 80,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 150, 20),
                          child: ElevatedButton(
                            onPressed:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => (SignIn())),
                              );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                          ),
                          child: Text(
                            "SKIP",
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