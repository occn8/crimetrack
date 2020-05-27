import 'package:crimetrack/screens/about.dart';
import 'package:crimetrack/screens/contact.dart';
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
        child: Column(
          children: <Widget>[
            SizedBox(height: 8),
            Text(
                'Help fight trafficking by uploading photos of your hotel room. these photos will  be used to determine where perpetrators of sex trafficking are commiting their crimes'),
            TextFormField(
              decoration: InputDecoration(hintText: 'Hotel Name'),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Room'),
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.camera_alt), onPressed: () {})),
                    Container(width: 10),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.camera_alt), onPressed: () {})),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.camera_alt), onPressed: () {})),
                    Container(width: 10),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.camera_alt), onPressed: () {})),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
                'You can submit up to four photos by tapping on the camera icons above. Not sure what pictures to take? We recommend taking two pictures for the entire room')
          ],
        ),
      ),
    );
  }
}
