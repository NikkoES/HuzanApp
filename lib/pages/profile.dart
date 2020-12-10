import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    if(image != null){
      setState(() {
        _image = image;
      });
    }
  }

  _callSnackbar(){
    _scaffoldState.currentState.showSnackBar(
      SnackBar(
        content: Text('Yuhuhu snackbar state..'),
        backgroundColor: Colors.red,
        action: SnackBarAction(
          onPressed: () {  },
          label: 'OK',
          textColor: Colors.white,
        ),
      )
    );
  }

  _callAlertDialog(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          content: Text('Ini contoh alert dialog yaa..'),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('OK')
            ),
            FlatButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Cancel')
            )
          ],
        );
      }
    );
  }

  _callBottomSheet(){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min, //kaya wrap content
            children: [
              ListTile(
                leading: Icon(Icons.play_arrow),
                title: Text('Play'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.music_note),
                title: Text('Music'),
                onTap: (){},
              )
            ],
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      body: ListView(
        children: [
          _image == null ? ListTile(
            leading: Icon(Icons.camera),
            title: Text('Pick Image'),
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_right),
              onPressed: (){
                getImage();
              },
            ),
          ) : Image.file(_image),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_right),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Snackbar'),
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_right),
              onPressed: (){
                _callSnackbar();
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Alert'),
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_right),
              onPressed: (){
                _callAlertDialog();
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Bottom Sheet'),
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_right),
              onPressed: (){
                _callBottomSheet();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SnackbarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Show Snackbar'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Yuhuhu snackbar..'),
          backgroundColor: Colors.red,
          action: SnackBarAction(
            onPressed: () {  },
            label: 'OK',
            textColor: Colors.white,
          ),
        ));
      },
    );
  }
}
