import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  void getUserLocation() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.medium);
    print(position.latitude);
    print(position.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.location_on,
                    color: Colors.green,
                        size: 30.0,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text("Kathmandu, Nepal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width *0.5,
              child: Image(image: AssetImage('images/sunny.png'))),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text("Hot and Sunny",style: TextStyle(fontSize: 16),),
                  ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text("20",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
                  ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("o", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.air),
                Text("10 km/hr"),
                Icon(Icons.water),
                Text("40 %"),

              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 0, 10),
              child: Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Today, 14 Feb"))),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)
                      ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text("9:00 AM"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Icon(
                            Icons.cloud_outlined,
                            size: 30,
                            color: Colors.white,
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("20",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text("o"),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      )
    );
  }
}