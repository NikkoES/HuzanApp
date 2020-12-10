import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Profile'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SnackbarButton(),
            RaisedButton(
              child: Text('Show SnackBar State'),
              onPressed: () {
                _callSnackbar();
              },
            ),
            RaisedButton(
              child: Text('Show Alert Dialog'),
              onPressed: () {
                _callAlertDialog();
              },
            ),
          ],
        ),
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
