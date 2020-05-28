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
      body: Scrollbar(
              child: Markdown(data: markDownData, onTapLink: ontapLink),
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
