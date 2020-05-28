import 'package:crimetrack/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

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
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10),
            Text('About $name'),
            Divider(indent: 20, endIndent: 20, height: 25, thickness: 2),
            Text(
                '$name enables you to help combat sex trafficking by uploading photos of the hotel rooms you stay in when you travel.'),
            SizedBox(height: 8),
            Text(
                'Traffickers regularly post photographs of their victims posted in hotel rooms for online advertisement. these photographs are evidence that can be used to find and prosecute the perpetrators of these crimes. In order to use these photos, however, investigators must be able to determine where the photos were taken.'),
            SizedBox(height: 8),
            Text(
                'The purpose of $name is to create a database of hotel room images that an investigator can efficiently search, in order to find other images taken in the same location as an image that is part of an investigation.'),
            SizedBox(height: 8),
            Text(
                '$name was created in 2020 by the $creators. The $creators initiative is commited to combating commercial sexual committed to combat'),
            Center(
              child: Markdown(data: markDownData, onTapLink: ontapLink),
            ),
          ],
        ),
      ),
    );
  }
  // _launchURL() async {
  // const url = 'https://flutter.dev';
  // if (await canLaunch(url)) {
  //   await launch(url);
  // } else {
  //   throw 'Could not launch $url';
  // }

  void ontapLink(href) async {
    if (await canLaunch(href)) {
      launch(href);
    } else {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('wrong address:$href')));
    }
  }
}
