import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/building/building.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    print('build main');
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Colors.white,
          accentColor: Color(0xFF62efff),
          fontFamily: 'Roboto',

        ),
        home: HomePage(),
        routes: {
          '/building': (BuildContext context) =>
          BuildingPage(),

        },


      );
  }
}




