// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:look_twice/set_password.dart';
import 'package:look_twice/sign_in.dart';

TextEditingController _nameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _phoneController = TextEditingController();


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => SignUpState();
}


class SignUpState extends State<SignUp> {


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


          // SIGN UP FORM ON BACKGROUND PICTURE
          body: Stack(
            children: [

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

                // SIGN UP FORM
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

                        // SIGN UP TEXT
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 190, 0),
                          width: 100,
                          child: Text(
                            "SIGN UP",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Helvetica-Bold",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ),

                      // GET STARTED
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 120, 0),
                        width: 170,
                        child: const Text(
                          "Get Started",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Helvetica",
                            fontSize: 10.5,
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
                            controller: _nameController,
                          
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
                            controller: _emailController,
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
                            controller: _phoneController,
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


                      // NEXT BUTTON
                      SizedBox(
                        width: 260,
                        height: 80,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 120, 20),
                          child: ElevatedButton(
                            onPressed:() {
                              if (_nameController.text.isNotEmpty &&
                                  _emailController.text.isNotEmpty &&
                                  _phoneController.text.isNotEmpty) {
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SetPassword()),
                              );
                              _emailController.clear();
                              _phoneController.clear();
                              _nameController.clear();
                              } else {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Error"),
                                              content: Text("Please fill out all fields."),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text("OK"),
                                                ),
                                              ],
                                            );
                                          },);
                              }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 24, 153, 121),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                          ),
                          child: Text(
                            "NEXT",
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
                  ),
                )
              ),


              // ALREADY HAVE AN ACCOUNT? SIGN IN BOX
                      SizedBox(
                        height: 165,
                        width: 350,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 24, 153, 121),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          // ALREADY HAVE AN ACCOUNT? TEXT
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container (
                                  margin: EdgeInsets.fromLTRB(0, 20, 120, 0),
                                  child: Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Helvetica",
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ),
                              ),

                      // SIGN IN BUTTON    
                      SizedBox(
                        width: 275,
                        height: 80,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 170, 20),
                          child: ElevatedButton(
                            onPressed:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignIn()),
                              );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                          ),
                          child: Text(
                            "SIGN IN",
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
            
          )],
              )

            
                        
              
          ),
                  
          );
                
  }
}