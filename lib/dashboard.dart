// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:look_twice/riders.dart';

class Dashboard extends StatefulWidget {
  Rider rider;
  
  Dashboard({super.key, required this.rider});

  @override
  State<Dashboard> createState() => DashboardState();
}


class DashboardState extends State<Dashboard> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold (
          // backgroundColor: Color.fromARGB(255, 32, 221, 221),


          // BODY
          body: Stack(
            children: <Widget> [

              // BACKGROUND GRADIENT
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.black,  Color.fromARGB(255, 32, 221, 221)],
                    stops: [0.65, 0.65],
                    transform: GradientRotation(362.3),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(50, 60, 0, 0),
                child: Text(
                  'Hi ${widget.rider.name}!',
                  style: TextStyle(
                    color: Colors.black,
                 
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              

              // HELMET IMAGE
              Container(
                margin: EdgeInsets.fromLTRB(220, 0, 0, 0),
                child: Image.asset(
                  './assets/helmet2.png',
                  height: 360,
                  width: 360,
                )
                ),

                // SOS BUTTON
              Container(
                margin: EdgeInsets.fromLTRB(10, 200, 0, 0),
                child: Image.asset(
                  './assets/sos.png',
                  height: 80,
                  width: 80,
                )
                ),

               Container(
                margin: EdgeInsets.fromLTRB(0, 300, 0, 0),
                child: Row(
                children: [
                
                  // BATTERY ICON
                  SizedBox(
                    width: 50,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.battery_full,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ),

                  // BATTERY PERCENTAGE
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child:
                    Text(
                      '100%',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ]
              )
              ),

              // LOOK TWICE LOGO
              Container(
                margin: EdgeInsets.fromLTRB(20, 370, 0, 0),
                child: Text(
                  "LOOK TWICE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Days One",
                    fontSize: 30,

                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),

              // BLUE LINE UNDER LOGO
                Container(
                  margin: EdgeInsets.fromLTRB(20, 410, 0, 0),
                  height: 5,
                  width: 70, 
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 153, 121),
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 32, 221, 221),
                        width: 1,
                      ),
                    ),
                  ),
              ),




                // Draggable scrollable sheet
            DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.05,
              maxChildSize: 0.4,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 22, 21, 21),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [

                          // 1ST RECTANGLE
                          Container(
                            height: 100,
                            width: 400,
                            margin: EdgeInsets.fromLTRB(20,0,20,0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                
                                // BLUETOOTH ICON
                                SizedBox(
                                  width: 50,
                                  child: Container( 
                                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                  child: Icon(
                                    Icons.bluetooth,
                                    color: Color.fromARGB(255, 19, 109, 183),
                                    size: 30,
                                  ),
                                  )
                                  ),

                                  // BLUETOOTH CONNECTED TEXT
                                  Container(
                                    margin: EdgeInsets.fromLTRB(50, 35, 0, 0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Bluetooth connected',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                                          child: Text(
                                          'You are good to go',
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
                            margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
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


                          // SECOND RECTANGLE
                          Container(
                            height: 100,
                            width: 400,
                            margin: EdgeInsets.fromLTRB(20,30,20,0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                
                                // WARNING ICON
                                SizedBox(
                                  width: 50,
                                  child: Container( 
                                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                  child: Icon(
                                    Icons.warning,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                  )
                                  ),

                                  // MISSING PROFILE INFO TEXT
                                  Container(
                                    margin: EdgeInsets.fromLTRB(50, 35, 0, 0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Missing Profile Information',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 70, 0),
                                          child: Text(
                                          'Add your blood group',
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
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                      ]
                      );
                    },
                  ),
                );
                },
            )
          

              
            ]
            
              ),
          
        )
        );  
                
  }
}