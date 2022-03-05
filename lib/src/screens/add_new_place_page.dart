import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _placename;
  String _address;
  String _description;
  String _imageurl;
  String _time;
  String _distance;
  Future addplace() async {
    var url = "http://192.168.100.6/php/insert.php";
    http.post(Uri.parse(url), headers: {
      "Accept": "application/json"
    }, body: {
      "place_name": _placename,
      "address": _address,
      "description": _description,
      "image_url": _imageurl,
      "time": _time,
      "distance": _distance
    });
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildplacename() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Place Name'),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Place Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _placename = value;
      },
    );
  }

  Widget _buildaddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Address is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _address = value;
      },
    );
  }

  Widget _builddescription() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Description'),
      maxLength: 10000,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Place description is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _description = value;
      },
    );
  }

  Widget _buildURL() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Image Url'),
      keyboardType: TextInputType.url,
      maxLength: 1000,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Image URL is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _imageurl = value;
      },
    );
  }

  Widget _buildtime() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Time'),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Time to go is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _time = value;
      },
    );
  }

  Widget _builddistance() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Distance'),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Distance from your location is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _distance = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        title: Text(
          "Add New Place",
          style: TextStyle(fontFamily: "cursive", fontSize: 16),
        ),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(50),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildplacename(),
                _buildaddress(),
                _builddescription(),
                _buildURL(),
                _buildtime(),
                _builddistance(),
                SizedBox(height: 50),
                // ignore: deprecated_member_use
                ElevatedButton(
                    child: Text("ADD now".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(color: Colors.red)))),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }
                      _formKey.currentState.save();
                      addplace();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
