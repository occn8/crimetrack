import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Cameras extends StatefulWidget {
  Cameras({
    Key key,
  }) : super(key: key);

  @override
  _CamerasState createState() => _CamerasState();
}

class _CamerasState extends State<Cameras> {
  File _image1, _image2, _image3, _image4;

  Future getImage1() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image1 = image;
    });
  }

  Future getImage2() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image2 = image;
    });
  }

  Future getImage3() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image3 = image;
    });
  }

  Future getImage4() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image4 = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image1 == null
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        icon: Icon(Icons.camera_alt), onPressed: getImage1),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.file(
                        _image1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            Container(width: 10),
            _image2 == null
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        icon: Icon(Icons.camera_alt), onPressed: getImage2),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.file(
                        _image2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image3 == null
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        icon: Icon(Icons.camera_alt), onPressed: getImage3),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.file(
                        _image3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            Container(width: 10),
            _image4 == null
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        icon: Icon(Icons.camera_alt), onPressed: getImage4),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.file(
                        _image4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 40),
          child: RaisedButton(
            onPressed: () {
              if (_image1 != null && _image2 != null) {
                showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text('Submitted'),
                          content: Text('successfully'),
                          actions: <Widget>[
                            FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'))
                          ],
                        ));
              } else {
                showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text('opps!'),
                          content: Text('select atleast 2 images'),
                          actions: <Widget>[
                            FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'))
                          ],
                        ));
              }
            },
            child: Text('SUBMIT'),
          ),
        ),
      ],
    );
  }
}
