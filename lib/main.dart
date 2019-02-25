import 'package:flutter/material.dart';
import 'package:flutter_app/SecondPage.dart';

import 'UpdateWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welecome to Flutter',
      home: new FirstPage(),
      routes: <String, WidgetBuilder>{
        "second": (_) => new SecondPage(),
        "updateWidgetState": (_) => new UpdateWidget()
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("First Page"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              FlatButton(
                child: new Text("Open second page"),
                onPressed: () => Navigator.of(context).pushNamed("second"),
              ),
              FlatButton(
                child: new Text("Open updateWidgetState page"),
                onPressed: () =>
                    Navigator.of(context).pushNamed("updateWidgetState"),
              )
            ],
          ),
        ));
  }
}
