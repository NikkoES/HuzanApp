import 'package:cashy_app/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Homepage",
    home: MyHomePage()
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ExampleCard();
  }
}

class ExampleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Icon(Icons.home),
          title: Text('Homepage'),
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
        body: ListView(
          children: <Widget>[
            Card(
              child: Column(
                children: [
                  Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Contoh berita pertama yeuhh..'),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.asset('images/senja.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Contoh berita kedua yeuhh dari lokal..'),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}


class ExampleInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Input Data'
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Input Data'
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Input Data',
                labelText: 'Input Data',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0)
                )
              ),
            ),
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: 'Input Data'
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Input Data'
            ),
          ),
        ],
      ),
    );
  }
}


class ExampleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          RaisedButton(
            child: Text('data'),
            color: Colors.red,
            textColor: Colors.white,
            splashColor: Colors.lightGreen,
            onPressed: (){},
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              child: Text('data', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              splashColor: Colors.lightGreen,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OutlineButton(
                child: Text('data'),
                borderSide: BorderSide(width: 2.0),
                onPressed: (){}
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              child: Text('data', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              splashColor: Colors.lightGreen,
              padding: const EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              onPressed: () {},
            ),
          ),
        ]
    );
  }
}

