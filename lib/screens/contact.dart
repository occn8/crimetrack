import 'package:crimetrack/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: Markdown(data: markDownData2, onTapLink: ontapLink),
      ),
    );
  }

  void ontapLink(href) async {
    if (await canLaunch(href)) {
      launch(href);
    } else {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('wrong address:$href')));
    }
  }
}
