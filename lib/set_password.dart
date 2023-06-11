// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:look_twice/emergency_info.dart';
import 'package:look_twice/sign_in.dart';
import 'package:look_twice/signup.dart';

TextEditingController _passwordController = TextEditingController();
TextEditingController _confirmPasswordController = TextEditingController();


class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => SetPasswordState();
}


class SetPasswordState extends State<SetPassword> {




  bool obscureText = true;

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


          // SET PASSWORD FORM ON BACKGROUND PICTURE
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

                // SET PASSWORD FORM
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

                        // SET PASSWORD
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 190, 0),
                          child: Text(
                            "SET PASSWORD",
                            textAlign: TextAlign.left,
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

                      // ROW FOR NEXT BUTTON AND GO BACK TEXT
                      Expanded(
                        child: SizedBox(
                          width: 270,

                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[

                              // NEXT BUTTON
                              SizedBox(
                                width: 190,
                                height: 80,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 20, 70, 20),
                                  child: ElevatedButton(
                                    onPressed:(){
                                      if (_passwordController.text.isNotEmpty && _passwordController.text == _confirmPasswordController.text) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => EmergencyInfo()),
                                        );
                                        _passwordController.clear();
                                        _confirmPasswordController.clear();
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
                                    "NEXT",
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

                              // GO BACK TEXT
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 15, 10, 0),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => SignUp()),
                                      );
                                    },
                                    child: Text(
                                      "Go Back",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 24, 153, 121),
                                        fontFamily: "Helvetica",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              ]
                          )
                          )
                        )
                      )
                      ],
                    ),
                  )
                ),


              // ALREADY HAVE AN ACCOUNT? SIGN IN BOX
                      SizedBox(
                        height: 140,
                        width: 350,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 24, 153, 121),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          // ALREADY HAVE AN ACCOUNT? TEXT
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Container (
                                  margin: EdgeInsets.fromLTRB(0, 0, 120, 0),
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