import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ContentInput extends StatefulWidget {
  ContentInput({
    Key key,
  }) : super(key: key);

  @override
  _ContentInputState createState() => _ContentInputState();
}

class _ContentInputState extends State<ContentInput> {
  File _image1, _image2, _image3, _image4;
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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

  Shadow shadow = BoxShadow(
    color: Colors.grey,
    blurRadius: 5.0,
    offset: Offset(0.0, 4.0),
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _controller1,
            textAlign: TextAlign.center,
            decoration: InputDecoration(hintText: 'Hotel Name'),
            validator: (String value) {
              if (value.isEmpty) {
                return 'Hotel name required';
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            controller: _controller2,
            textAlign: TextAlign.center,
            decoration: InputDecoration(hintText: 'Room'),
            validator: (String value) {
              if (value.isEmpty) {
                return 'Room number required';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _image1 == null
                  ? Container(
                      decoration: BoxDecoration(
                        boxShadow: [shadow],
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
              Container(width: 20),
              _image2 == null
                  ? Container(
                      decoration: BoxDecoration(
                        boxShadow: [shadow],
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
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _image3 == null
                  ? Container(
                      decoration: BoxDecoration(
                        boxShadow: [shadow],
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
              Container(width: 20),
              _image4 == null
                  ? Container(
                      decoration: BoxDecoration(
                        boxShadow: [shadow],
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
            child: RaisedButton(
              onPressed: () {
                if (!_formKey.currentState.validate()) {
                  return;
                }
                if (_formKey.currentState.validate()) {
                  if ((_image1 != null && _image2 != null) ||
                      (_image1 != null && _image3 != null) ||
                      (_image1 != null && _image4 != null) ||
                      (_image2 != null && _image3 != null) ||
                      (_image3 != null && _image4 != null)) {
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
                      ),
                    );
                    setState(() {
                      _image1 = null;
                      _image2 = null;
                      _image3 = null;
                      _image4 = null;
                    });
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
                      ),
                    );
                  }
                  _controller1.clear();
                  _controller2.clear();
                }
              },
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              padding: new EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'SUBMIT',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
