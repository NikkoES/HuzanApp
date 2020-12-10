import 'package:cashy_app/routes/route_b.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Siap untuk implementasi routing dan navigasi?',
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('routeA');
              },
              child: Text('Bawa Ke Halaman A'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RouteB(),
                  ),
                );
              },
              child: Text('Bawa Ke Halaman B'),
            )
          ],
        ),
      ),
    );
  }
}
