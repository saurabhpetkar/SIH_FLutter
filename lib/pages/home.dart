import 'package:flutter/material.dart';
import 'package:sih/global/circle.dart';
import 'package:sih/global/rectangle.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('College map'),
      ),
      body: SafeArea(
        child: Container(
            height: 390,
            width: 390,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(child: hostel()),
                    GestureDetector(child: entrance(), onTap: (){
                      _showDialog('IIITS Entrance');
                    },
                    ),
                    GestureDetector(child: nothing1(), onTap: (){
                      _showDialog('Plantations');
                    },),
                  ],
                ),
                Row(
                  children: <Widget>[
                    GestureDetector(child: reservoir(), onTap: (){
                      _showDialog('IIITS Reservoir');
                    },),
                    GestureDetector(child: building(), onTap: (){
                      Navigator.pushNamed(context, '/building');
                    }),
                    GestureDetector(child: nothing2(), onTap: (){
                      _showDialog('Plantations');
                    },),
                  ],
                ),
                Row(
                  children: <Widget>[
                    GestureDetector(child: cricket()),
                    GestureDetector(child: football(),),
                    GestureDetector(child: nothing3(), onTap: (){
                      _showDialog('Plantations');
                    },),
                  ],
                )
              ],
            ),
          ),
        ),

    );
  }

  void _showDialog(String title) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(title),
          content: new Text("No events happen here"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void reservoir_box() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("IIITS Reservoir"),
          content: new Text("No events happen here"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget hostel() {
    return Container(
      color: Colors.green.withOpacity(0.6),
      height: 130,
      width: 130,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Rectangle(45, 10, Colors.grey),
            bottom: 0,
            right: 10,
          ),
          Positioned(
            child: Rectangle(6, 100, Colors.grey),
            bottom: 10,
            right: 49,
          ),
          Positioned(
            child: Rectangle(80, 6, Colors.grey),
            bottom: 105,
            left: 0,
          ),
          Positioned(
            child: Rectangle(70, 15, Colors.white),
            top: 28,
            left: 3,
          ),
          Positioned(
            child: Rectangle(25, 21, Colors.white),
            top: 51,
            left: 3,
          ),
          Positioned(
            child: Rectangle(40, 30, Colors.white),
            top: 77,
            left: 3,
          ),
          Positioned(
            child: Rectangle(20, 10, Colors.orangeAccent.withOpacity(0.7)),
            top: 30,
            right: 26,
          ),
          Positioned(
            child: Rectangle(10, 26, Colors.orangeAccent.withOpacity(0.7)),
            top: 43,
            right: 26,
          ),
          Positioned(
            child: Rectangle(20, 12, Colors.orangeAccent.withOpacity(0.7)),
            top: 70,
            right: 26,
          ),
          Positioned(
            child: Rectangle(3, 20, Colors.grey),
            bottom: 10,
            right: 7,
          ),
          Positioned(
            child: Rectangle(15, 10, Colors.grey.withOpacity(0.5)),
            bottom: 30,
            right: 0,
          ),
          Positioned(
            child: Rectangle(23, 55, Colors.green.withOpacity(0.84)),
            top: 30,
            right: 0,
          ),
          Positioned(
            child: Rectangle(10, 10, Colors.grey),
            bottom: 0,
            right: 0,
          ),
          Positioned(
            child: Rectangle(10, 2, Colors.grey),
            bottom: 25,
            right: 0,
          ),
          Positioned(
            child: Circle(2, Colors.lightGreen),
            bottom: 3,
            right: 3,
          ),
        ],
      ),
    );
  }

  Widget building() {
    return Container(
      color: Colors.green.withOpacity(0.6),
      height: 130,
      width: 130,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Rectangle(10, 32, Colors.grey),
            top: 0,
            left: 60,
          ),
          Positioned(
            child: Circle(22, Colors.grey),
            top: 8,
            left: 8,
          ),
          Positioned(
            child: Rectangle(57, 30, Colors.white),
            top: 2,
            left: 2,
          ),
          Positioned(
            child: Rectangle(32, 30, Colors.white),
            top: 32,
            left: 2,
          ),
        ],
      ),
    );
  }

  Widget entrance() {
    return Container(
      height: 130,
      width: 130,
      color: Colors.green.withOpacity(0.6),
      child: Stack(
        children: <Widget>[
          Container(
            height: 100,
            width: 120,
            margin: EdgeInsets.only(top: 25, left: 35, right: 35),
            decoration: new BoxDecoration(
              color: Colors.grey,
              borderRadius: new BorderRadius.all(Radius.elliptical(100, 90)),
            ),
          ),
          Container(
            height: 80,
            width: 90,
            margin: EdgeInsets.only(top: 34, left: 45, right: 45),
            decoration: new BoxDecoration(
              color: Colors.brown.withOpacity(0.4),
              borderRadius: new BorderRadius.all(Radius.elliptical(80, 90)),
            ),
          ),
          Positioned(
            child: Circle(4, Colors.greenAccent),
            top: 57,
            right: 52,
          ),
          Positioned(
            child: Circle(4, Colors.greenAccent),
            top: 57,
            left: 52,
          ),
          Positioned(
            child: Circle(4, Colors.greenAccent),
            bottom: 40,
            right: 52,
          ),
          Positioned(
            child: Circle(4, Colors.greenAccent),
            bottom: 40,
            left: 52,
          ),
          Positioned(
            child: Rectangle(10, 50, Colors.grey),
            top: 0,
            right: 35,
          ),
          Positioned(
            child: Rectangle(130, 10, Colors.grey),
            bottom: 0,
            right: 0,
          ),
          Positioned(
            child: Rectangle(30, 85, Colors.green.withOpacity(0.84)),
            top: 30,
            left: 0,
          ),
          Positioned(
            child: Rectangle(45, 2, Colors.grey),
            bottom: 25,
            left: 0,
          ),
        ],
      ),
    );
  }

  Widget football() {
    return Container(
      height: 130,
      width: 130,
      color: Colors.green.withOpacity(0.6),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Rectangle(130, 10, Colors.grey),
            top: 0,
            right: 0,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 75,
            right: 8,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 57,
            right: 18,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 74,
            right: 85,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 68,
            right: 6,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 51,
            right: 46,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 74,
            right: 5,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 68,
            right: 29,
          ),
          Positioned(
            child: Rectangle(60, 40, Colors.orangeAccent),
            left: 10,
            top: 20,
          ),
        ],
      ),
    );
  }

  Widget reservoir() {
    return Container(
      height: 130,
      width: 130,
      color: Colors.green.withOpacity(0.6),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Rectangle(10, 130, Colors.grey),
            top: 0,
            right: 0,
          ),
          Positioned(
            child: Rectangle(10, 10, Colors.white),
            top: 80,
            right: 10,
          ),
          Positioned(
            child: Rectangle(80, 3, Colors.white),
            top: 83,
            right: 20,
          ),
          Positioned(
            child: Rectangle(50, 60, Colors.blueAccent),
            left: 20,
            bottom: 20,
          ),
        ],
      ),
    );
  }

  Widget cricket() {
    return Container(
      color: Colors.green.withOpacity(0.6),
      height: 130,
      width: 130,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Rectangle(10, 10, Colors.grey),
            top: 0,
            right: 0,
          ),
          Positioned(
            child: Circle(
              45,
              Colors.orangeAccent.withOpacity(0.7),
            ),
            left: 5,
            top: 5,
          ),
          Positioned(
            child: Rectangle(10, 23, Colors.red),
            left: 45,
            top: 40,
          ),
        ],
      ),
    );
  }

  Widget nothing1() {
    return Container(
      height: 130,
      width: 130,
      child: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            height: 130,
            width: 130,
            color: Colors.green.withOpacity(0.6),
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 87,
            right: 84,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 18,
            right: 50,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 34,
            right: 68,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 78,
            right: 44,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 75,
            right: 8,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 57,
            right: 18,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 74,
            right: 85,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 68,
            right: 6,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 51,
            right: 46,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 74,
            right: 5,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 68,
            right: 29,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 21,
            right: 50,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 87,
            right: 95,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 59,
            right: 92,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 54,
            right: 49,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 64,
            right: 58,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 18,
            right: 58,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 79,
            right: 68,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 55,
            right: 11,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 24,
            right: 60,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 10,
            right: 73,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 36,
            right: 78,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 5,
            right: 41,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 90,
            right: 8,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 58,
            right: 54,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 27,
            right: 22,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 50,
            right: 90,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 12,
            right: 50,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 28,
            right: 71,
          ),
          Positioned(
            child: Rectangle(10, 10, Colors.grey),
            bottom: 0,
            left: 0,
          ),
        ],
      ),
    );
  }

  Widget nothing2() {
    return Container(
      height: 130,
      width: 130,
      child: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            height: 130,
            width: 130,
            color: Colors.green.withOpacity(0.6),
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 87,
            right: 84,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 18,
            right: 50,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 34,
            right: 68,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 78,
            right: 44,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 75,
            right: 8,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 57,
            right: 18,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 74,
            right: 85,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 68,
            right: 6,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 51,
            right: 46,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 74,
            right: 5,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 68,
            right: 29,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 21,
            right: 50,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 87,
            right: 95,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 59,
            right: 92,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 54,
            right: 49,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 64,
            right: 58,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 18,
            right: 58,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 79,
            right: 68,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 55,
            right: 11,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 24,
            right: 60,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 10,
            right: 73,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 36,
            right: 78,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 5,
            right: 41,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 90,
            right: 8,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 58,
            right: 54,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 27,
            right: 22,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 50,
            right: 90,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 12,
            right: 50,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 28,
            right: 71,
          ),
          Positioned(
            child: Rectangle(10, 130, Colors.grey),
            bottom: 0,
            left: 0,
          ),
        ],
      ),
    );
  }

  Widget nothing3() {
    return Container(
      height: 130,
      width: 130,
      child: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            height: 130,
            width: 130,
            color: Colors.green.withOpacity(0.6),
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 87,
            right: 84,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 18,
            right: 50,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 34,
            right: 68,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 78,
            right: 44,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 75,
            right: 8,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 57,
            right: 18,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 74,
            right: 85,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 68,
            right: 6,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 51,
            right: 46,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 74,
            right: 5,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 68,
            right: 29,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 21,
            right: 50,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 87,
            right: 95,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 59,
            right: 92,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 54,
            right: 49,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 64,
            right: 58,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 18,
            right: 58,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 79,
            right: 68,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 55,
            right: 11,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 24,
            right: 60,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 10,
            right: 73,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 36,
            right: 78,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 5,
            right: 41,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 90,
            right: 8,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 58,
            right: 54,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 27,
            right: 22,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 50,
            right: 90,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 12,
            right: 50,
          ),
          Positioned(
            child: Circle(5.0, Colors.greenAccent),
            bottom: 28,
            right: 71,
          ),
          Positioned(
            child: Rectangle(10, 10, Colors.grey),
            top: 0,
            left: 0,
          ),
        ],
      ),
    );
  }

}
