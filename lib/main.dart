import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welecome to Flutter',
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('First Page'),
          ),
          body: Center(
              child: FlatButton(
            child: Text("open new route"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.of(context).pushNamed("second");
            },
          ))),
    );
  }
}
