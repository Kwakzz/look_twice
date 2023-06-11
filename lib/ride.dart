// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:look_twice/riders.dart';

class Ride extends StatefulWidget {

  Rider rider;

  Ride({super.key, required this.rider});

  @override
  State<Ride> createState() => RideState();
}


class RideState extends State<Ride> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold (
          // backgroundColor: Color.fromARGB(255, 32, 221, 221),


          // BODY
          body: Stack(
            children: <Widget> [

              // OPEN STREET MAP
              FlutterMap(
                options:
                    MapOptions(center: LatLng(5.7599,  0.2254), zoom: 13.0),
                layers: [
                  TileLayerOptions(
                      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png'),
                  MarkerLayerOptions(markers: [
                    Marker(
                        width: 30.0,
                        height: 30.0,
                        point: LatLng(5.7599, 0.2254),
                        builder: (ctx) => Container(
                                child: Container(
                              child: Icon(
                                Icons.location_on,
                                color: Colors.blueAccent,
                                size: 40,
                              ),
                            )))
                  ])
                ],
              ),

              // SEARCH DESTINATION BAR
              Center(
                child: SizedBox(
                        width: 400,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 600),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 22, 21, 21),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: 'Search Destination',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: "Helvetica",
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
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


                // SMART RIDE BOX
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 22, 21, 21),
                      ),
                      child: Column(
                        children: [

                          Row(
                            children: [

                              // SMART RIDE
                              Container(
                                margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                child: Text(
                                  "SMART RIDE",
                                  style: TextStyle(
                                    fontFamily: "Helvetica",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white
                                  ),
                                ),
                              ),

                              // ENABLE BUTTON
                              Container(
                                margin: EdgeInsets.fromLTRB(180, 10, 0, 0),
                                width: 100,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255, 24, 153, 121),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  )
                                  ),
                                  child: Text(
                                    "ENABLE",
                                    style: TextStyle(
                                      fontFamily: "Helvetica",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white
                                    ),
                                    )
                                )
                                )

                          ],
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 50, 0),
                            child: Text(
                              "Get real time directions, traffic and weather updates",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Helvetica",
                                fontSize: 14,
                              ),
                            ),
                          )
                    ]),
                  )
                )
                )

              
          

              
            ]
            
              ),
          
        )
        );  
                
  }
}