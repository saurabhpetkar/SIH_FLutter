import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sih/global/rectangle.dart';
import 'package:sih/global/events.dart';

class BuildingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BuildingPageState();
  }
}

class BuildingPageState extends State<BuildingPage> {
  FloorMode floor = FloorMode.first;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IIITS Building'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Center(
                child: floor == FloorMode.first
                    ? Text(
                        "First Floor",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    : Text(
                        "Second Floor",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width * 0.4,
                  child: RaisedButton(
                    color: Colors.pinkAccent,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "First Floor",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          floor = FloorMode.first;
                        },
                      );
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width * 0.4,
                  child: RaisedButton(
                    color: Colors.pinkAccent,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Second Floor",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          floor = FloorMode.second;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 390,
              height: 400,
              color: Colors.grey.withOpacity(0.6),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Rectangle(380, 190, Colors.white),
                    top: 10,
                    left: 5,
                  ),
                  Positioned(
                    child: Rectangle(190, 190, Colors.white),
                    top: 200,
                    left: 5,
                  ),
                  Positioned(
                    top: 10,
                    left: 5,
                    child: Rectangle(380, 190, Colors.white),
                  ),
                  Positioned(
                    top: 15,
                    left: 5,
                    child:
                        floor == FloorMode.first ? first_hori() : second_hori(),
                  ),
                  Positioned(
                    child: floor == FloorMode.first ? first_ver() : second_ver(),
                    left: 5,
                    bottom: 10,
                  ),
                  Positioned(
                    child: Box(30, 50, "Washroom", Colors.greenAccent),
                    right: 33,
                    top: 150,
                  ),
                  Positioned(
                    child: Box(30, 50, "Washroom", Colors.greenAccent),
                    right: 169,
                    top: 150,
                  ),
                  Positioned(
                    child: Box(50, 20, "Washroom", Colors.greenAccent),
                    right: 197,
                    top: 230,
                  ),
                  Positioned(
                    child: Box(50, 20, "Washroom", Colors.greenAccent),
                    right: 197,
                    bottom: 40,
                  ),
                  floor == FloorMode.second
                      ? Positioned(
                          child: Box(105, 50, "Lab", Colors.grey),
                          right: 64,
                          top: 150,
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  floor == FloorMode.second
                      ? Positioned(
                          child: GestureDetector(
                            child: Box(50, 87, "Lab", Colors.grey),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventPage("113", "113"),
                                ),
                              );
                            },
                          ),
                          bottom: 60,
                          left: 144,
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Positioned(
                    bottom: 10,
                    left: 145,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 145,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                            SmallBox(5, 15),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 151,
                    right: 5,
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                            SmallBox(15, 5),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget first_hori() {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Box(90, 80, "115", Colors.grey),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventPage("115", "113")),
            );
          },
        ),
        GestureDetector(
          child: Box(90, 80, "113", Colors.grey),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventPage("113", "113")),
            );
          },
        ),
        GestureDetector(
          child: Box(90, 80, "Library", Colors.grey),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => EventPage("Library", "113")),
            );
          },
        ),
        GestureDetector(
          child: Box(90, 80, "Registrar", Colors.grey),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => EventPage("Registrar", "113")),
            );
          },
        ),
      ],
    );
  }

  Widget second_hori() {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Box(70, 60, "213", Colors.grey),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventPage("213", "113")),
            );
          },
        ),
        GestureDetector(
          child: Box(70, 60, "215", Colors.grey),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventPage("215", "113")),
            );
          },
        ),
        GestureDetector(
          child: Box(150, 60, "Lab", Colors.grey),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventPage("Lab", "113")),
            );
          },
        ),
        GestureDetector(
          child: Box(70, 60, "Acd Office", Colors.grey),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => EventPage("Academic Office", "113")),
            );
          },
        ),
      ],
    );
  }

  Widget first_ver(){
    return Container(
//                height: 260,
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Box(90, 60, "107", Colors.grey),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        EventPage("107", "113")),
              );
            },
          ),
          GestureDetector(
            child: Box(90, 62, "105", Colors.grey),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        EventPage("105", "113")),
              );
            },
          ),
          GestureDetector(
            child: Box(90, 62, "103", Colors.grey),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        EventPage("103", "113")),
              );
            },
          ),
          GestureDetector(
            child: Box(90, 62, "101", Colors.grey),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        EventPage("101", "113")),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget second_ver(){
    return Container(
//                height: 260,
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Box(90, 60, "209", Colors.grey),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        EventPage("209", "113")),
              );
            },
          ),
          GestureDetector(
            child: Box(90, 62, "207", Colors.grey),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        EventPage("207", "113")),
              );
            },
          ),
          GestureDetector(
            child: Box(90, 62, "205", Colors.grey),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        EventPage("205", "113")),
              );
            },
          ),
          GestureDetector(
            child: Box(90, 62, "201", Colors.grey),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        EventPage("201", "113")),
              );
            },
          ),
        ],
      ),
    );
  }


  Widget SmallBox(double width, double height) {
    return Container(
      width: width,
      height: height,
      child: Center(),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.8),
        border: Border.all(color: Colors.black, width: 1),
      ),
    );
  }

  Widget Box(double width, double height, String heading, Color color) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        width: width,
        height: height,
        child: Center(
          child: Text(heading),
        ),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black, width: 1),
        ),
      ),
    );
  }
}

enum FloorMode {
  first,
  second,
}
