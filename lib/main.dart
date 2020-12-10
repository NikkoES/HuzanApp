import 'package:cashy_app/pages/menu.dart';
import 'package:cashy_app/pages/profile.dart';
import 'package:cashy_app/pages/dashboard.dart';
import 'package:cashy_app/routes/route_a.dart';
import 'package:cashy_app/routes/route_not_found.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Huzan Apps",
      routes: {
        'routeA' : (BuildContext context) => RouteA()
      },
      onUnknownRoute: (RouteSettings setting){
        return MaterialPageRoute(
            builder: (context) => NotFound()
        );
      },
      home: MyHomePage()
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  final _layoutPages = [
    Dashboard(),
    Menu(),
    Profile(),
  ];

  void _onTabItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.home),
        title: Text('Huzan Apps'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (c) => Profile())
              );
            },
          )
        ],
      ),
      body: _layoutPages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Menu'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}