// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:look_twice/first_page.dart';
import 'package:look_twice/riders.dart';
import 'package:look_twice/signup.dart';

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => SignInState();
}


class SignInState extends State<SignIn> {

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


          // SIGN IN FORM ON BACKGROUND PICTURE
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

                // SIGN IN FORM
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

                        // SIGN IN
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 220, 0),
                          child: Text(
                            "SIGN IN",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Helvetica-Bold",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ),

                      // LOG INTO YOUR ACCOUNT
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 110, 0),
                        width: 170,
                        child: Text(
                          "Log into your account",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Helvetica",
                            fontSize: 10.5,
                          ),
                        )
                      ),


                      // EMAIL FIELD
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
                            controller: _passwordController,
                            obscureText: obscureText,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Password',
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

                      // ROW FOR SIGN IN BUTTON AND GO BACK TEXT
                      Expanded(
                        child: SizedBox(
                          width: 270,

                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[

                              // SIGN IN BUTTON
                              SizedBox(
                                width: 190,
                                height: 80,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 20, 70, 20),
                                  child: ElevatedButton(
                                    onPressed:(){
                                      if (_emailController.text.isNotEmpty &&
                                          _passwordController.text.isNotEmpty) {
                                            for (Rider rider in riders) {
                                              if (rider.email == _emailController.text &&
                                                  rider.password == _passwordController.text) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => FirstPage(rider: rider)),
                                                    );
                                                    _emailController.clear();
                                                    _passwordController.clear();
                                                    return;
                                                  }
                                                  else{
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext context) {
                                                        return AlertDialog(
                                                          title: Text("Error"),
                                                          content: Text("Wrong email or password."),
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
                                            }
                                  } else {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Error"),
                                        content: Text("Please try again."),
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
                                    "SIGN IN",
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
                        )
                      )
                      ],
                    ),
                  )
                ),


              // DON'T HAVE AN ACCOUNT? SIGN UP BOX
                      SizedBox(
                        height: 140,
                        width: 350,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 24, 153, 121),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          // DON'T HAVE AN ACCOUNT? TEXT
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Container (
                                  margin: EdgeInsets.fromLTRB(0, 0, 120, 0),
                                  child: Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Helvetica",
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ),
                              ),

                      // SIGN UP BUTTON    
                      SizedBox(
                        width: 275,
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
                            "SIGN UP",
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