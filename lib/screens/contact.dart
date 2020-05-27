import 'package:crimetrack/constant.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}



class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Container(
        padding: new EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text('Contact Us'),
            Divider(indent: 20, endIndent: 20, height: 25, thickness: 2),
            Text(
                'For general questions about $name and how you can help fight sex trafficking, please email $email1'),
            SizedBox(height: 5),
            Text(
                'If you are having techinicaldifficulties using the $name application, need help in uploading photos, or heve feedback about the $name user expereince, please email $email2 '),
            SizedBox(height: 5),
            Center(
              child: Text('Do you suspect someone is being trafficked'),
            ),
            SizedBox(height: 5),
            Center(
              child: Text('To report a Tip:'),
            ),
            SizedBox(height: 5),
            Center(
              child: Text('Call: 1-888-373-7888'),
            ),
            SizedBox(height: 5),
            Center(
              child: Text('OR'),
            ),
            SizedBox(height: 5),
            Center(
              child: Text('Text: HELP or INFO to BeFree(233733)'),
            ),
          ],
        ),
      ),
    );
  }
}
