import 'package:crimetrack/constant.dart';
import 'package:crimetrack/screens/about.dart';
import 'package:crimetrack/screens/contact.dart';
import 'package:crimetrack/widgets/content_input.dart';
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
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: new EdgeInsets.all(8),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 5),
              Divider(indent: 30, endIndent: 30, color: Colors.amber),
              Text('$welcome'),
              Divider(indent: 40, endIndent: 40, color: Colors.amber),
              SizedBox(height: 5),
              ContentInput(),
              SizedBox(height: 10),
              Divider(indent: 30, endIndent: 30, color: Colors.amber),
              Text('$descript'),
              Divider(indent: 40, endIndent: 40, color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
