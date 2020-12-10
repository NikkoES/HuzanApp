import 'package:flutter/material.dart';
import 'package:cashy_app/routes/route_b.dart';

class RouteA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Route A'),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Back to Home'),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RouteB())
                );
              },
              child: Text('Route B from A'),
            )
          ],
        ),
      ),
    );
  }
}
