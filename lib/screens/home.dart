import 'package:crimetrack/constant.dart';
import 'package:crimetrack/screens/about.dart';
import 'package:crimetrack/screens/contact.dart';
import 'package:crimetrack/widgets/cameras.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Container(
            width: 60,
            child: IconButton(
              icon: Text('About'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
            ),
          ),
          Container(
            width: 75,
            child: IconButton(
              icon: Text('Contact'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contact()));
              },
            ),
          ),
        ],
      ),
      body: Container(
        padding: new EdgeInsets.all(5),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 8),
            Text('$welcome'),
            SizedBox(height: 8),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: 'Hotel Name'),
            ),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: 'Room'),
            ),
            SizedBox(height: 10),
            Cameras(),
            // SizedBox(height: 10),
            // Container(
            //   margin: new EdgeInsets.symmetric(horizontal: 40),
            //   child: RaisedButton(
                
            //     onPressed: () {
            //       showDialog<String>(
            //           context: context,
            //           builder: (BuildContext context) => AlertDialog(
            //                 title: const Text('Submitted'),
            //                 content: Text('successfully'),
            //                 actions: <Widget>[
            //                   FlatButton(
            //                       onPressed: () {
            //                         Navigator.pop(context);
            //                       },
            //                       child: Text('OK'))
            //                 ],
            //               ));
            //     },
            //     child: Text('SUBMIT'),
            //   ),
            // ),
            SizedBox(height: 10),
            Text('$descript')
          ],
        ),
      ),
    );
  }
}
