import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Container(
        padding: new EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text('TraffickCam'),
            Divider(indent: 20,endIndent: 20,height: 25,thickness: 2,),
            Text(
                'TraffickCam enables you to help combat sex trafficking by uploading photos of the hotel rooms you stay in when you travel.'),
            SizedBox(height: 5),
            Center(),
          ],
        ),
      ),
    );
  }
}
