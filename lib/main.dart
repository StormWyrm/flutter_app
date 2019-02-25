import 'package:flutter/material.dart';
import 'package:flutter_app/SecondPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welecome to Flutter',
      home: new FirstPage(),
      routes: <String, WidgetBuilder>{"second": (_) => new SecondPage()},
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("First Page"),
      ),
      body: new Center(
        child: new FlatButton(
            highlightColor: Colors.blue,
            onPressed: () => Navigator.of(context).pushNamed("second"),
            child: const Text("Open second page")),
      ),
    );
  }
}
