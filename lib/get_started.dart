// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:look_twice/signup.dart';


class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => GetStartedState();
}


class GetStartedState extends State<GetStarted> {

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
  
                      // GET STARTED BUTTON    
                      child: SizedBox(
                        width: 135,
                        height: 100,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: ElevatedButton(
                            onPressed:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => (SignUp())),
                              );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 24, 153, 121),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                          ),
                          child: Text(
                            "GET STARTED",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Helvetica",
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                        )
                      )
                      )

                              
                            
                          ),
                         
          ]
          )
          ),
                  
          );
                
  }
}