import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FootballPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FootballPageState();
  }
}

class FootballPageState extends State<FootballPage> {
  List<dynamic> _events = [];
  bool isloading = true;

  @override
  void initState() {
    doit();
    super.initState();
  }

  void doit() async {
    _events = await GetMeetings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      drawer: drawer(context, widget.model.logout, widget.model),
      appBar: AppBar(
        title: Text('Football Events'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: isloading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : Scrollbar(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ButtonTheme(
              minWidth: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 3.0, right: 0.0, bottom: 1),
                child: RaisedButton(
                  elevation: 1,
                  color: Colors.white,
                  onPressed: () {
//                  Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                  builder: (context) => MeetingDetailPage(widget.model,
//                  _meetings[index],
//                  )),
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    height: 60,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 16,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Text(
                                  _events[index]['organiser'].toString(),
                                  style: TextStyle(fontSize: 17, fontFamily: 'UbuntuMono',fontWeight: FontWeight.w600,),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  _events[index]['description'].toString(),
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: Align(
                              alignment: Alignment(0, 0),
                              child: Text(
                                _events[index]['date'].toString(),
                                style: TextStyle(color: Colors.blue, fontSize: 12, fontFamily: 'UbuntuMono',fontWeight: FontWeight.w600,),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: _events.length,
        ),
      ),
    );
  }

  Future<List<dynamic>> GetMeetings() async {
    setState(() {
      isloading = true;
    });

    String link = "http:///hr/meetinglist";
    http.Response response = await http.get(
      link,
    );
    print('meeting status code');

    String error_message =
        "Couldn't fetch the meeting list, please try again later";

    print(response.statusCode);

    final d = response.body;
    final list = json.decode(d);
    print(list);

    List<dynamic> _events2 = [
      {
        'organiser': 'Backend work',
        'description':
        'Backend work has to be done today at any cost, please do anything inorder to complete it.',
        'date': '11 Dec, 2019'
      },
      {
        'organiser': 'Frontend work',
        'description': 'Frontend work has to be done today.',
        'date': '11 Dec, 2019'
      },
      {
        'organiser': 'API work',
        'description': 'API work has to be done today.',
        'date': '11 Dec, 2019'
      },
      {
        'organiser': 'Flutter work',
        'description': 'Flutter work has to be done today.',
        'date': '11 Dec, 2019'
      },
      {
        'organiser': 'Node js work',
        'description': 'Node js work has to be done today.',
        'date': '11 Dec, 2019'
      },
      {
        'organiser': 'Django work',
        'description': 'Django work has to be done today.',
        'date': '11 Dec, 2019'
      },
      {
        'organiser': 'Firebase work',
        'description': 'Firebase work has to be done today.',
        'date': '11 Dec, 2019'
      },
      {
        'organiser': 'Flask work',
        'description': 'Flask work has to be done today.',
        'date': '11 Dec, 2019'
      },
      {
        'organiser': 'Adobe work',
        'description': 'Adobe work has to be done today.',
        'date': '11 Dec, 2019'
      },
      {
        'organiser': 'Backend work',
        'description': 'Backend work has to be done today.',
        'date': '11 Dec, 2019'
      },
    ];

    _events = _events2;
    setState(() {
      isloading = false;
    });
    return _events;
  }
}
