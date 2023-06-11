// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:look_twice/settings.dart';
import 'package:look_twice/sign_in.dart';
import 'package:look_twice/riders.dart';

TextEditingController _passwordController = TextEditingController();
TextEditingController _confirmPasswordController = TextEditingController();


class ChangePassword extends StatefulWidget {

  Rider rider;

  ChangePassword({super.key, required this.rider});

  @override
  State<ChangePassword> createState() => ChangePasswordState();
}


class ChangePasswordState extends State<ChangePassword> {




  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        title: "Look Twice",
        home: Scaffold (

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
                          MaterialPageRoute(builder: (context) => Settings(rider: widget.rider,)),
                        );
                      },
                  ),
                ],
              ),
          ),


          // CHANGE PASSWORD FORM ON BACKGROUND PICTURE
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
                        blurRadius: 1.0,
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

                // CHANGE PASSWORD FORM
                children: [
                  SizedBox(
                  height: 510,
                  width: 350,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 180, 0, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 22, 21, 21),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column (
                      children: [

                        // CHANGE PASSWORD
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 140, 0),
                          child: Text(
                            "CHANGE PASSWORD",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Helvetica-Bold",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ),

                      // SECURE YOUR ACCOUNT
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 120, 0),
                        width: 170,
                        child: Text(
                          "Secure your account",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Helvetica",
                            fontSize: 10.5,
                          ),
                        )
                      ),


                      // PASSWORD FIELD
                      SizedBox(
                        width: 270,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            obscureText: obscureText,
                            controller: _passwordController,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Enter Password',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Helvetica",
                                fontSize: 15,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                    }
                                  );
                                },
                                child: Icon(
                                  obscureText ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        )
                      ),


                      // RE-ENTER PASSWORD FIELD
                      SizedBox(
                        width: 270,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            controller: _confirmPasswordController,
                            obscureText: obscureText,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Re-enter Password',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Helvetica",
                                fontSize: 15,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                    }
                                  );
                                },
                                child: Icon(
                                  obscureText ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        )
                      ),

                      // CREATE NEW PASSWORD BUTTON

                              SizedBox(
                                width: 240,
                                height: 80,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  child: ElevatedButton(
                                    onPressed:(){
                                      if (_passwordController.text.isNotEmpty && _passwordController.text == _confirmPasswordController.text) {                               
                                        _passwordController.clear();
                                        _confirmPasswordController.clear();
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Successfully changed password"),
                                              content: Text("Sign in with new password."),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => SignIn()),
                                                  );
                                                  },
                                                  child: Text("OK"),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }

                                      else  {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Error"),
                                              content: Text("Enter a password and make sure they match."),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text("OK"),
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
                                    "CREATE NEW PASSWORD",
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
                      
                    ),
                  )
            ]),

            
            
            ),
            
          ]
          ),
              )

            
                        
              
          );
                  
        
                
  }
}