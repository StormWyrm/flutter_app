import 'package:flutter/material.dart';

class UpdateWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "this is a update widget state page",
      home: new UpdateWidget(),
    );
  }
}

class UpdateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new UpdateWidgetState();
  }
}

class UpdateWidgetState extends State<UpdateWidget>
    with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;
  String textToShow = "I like Flutter";

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(microseconds: 2000));
    controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _updateText();
      }
    });
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeInOut);
  }

  void _updateText() {
    setState(() {
      textToShow = "Flutter is so awesome!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("UpdateWidgetPage"),
      ),
      body: new Center(
        child: new FadeTransition(opacity: curve, child: new Text(textToShow)),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          controller.forward();
        },
        tooltip: "Update Text",
        child: new Icon(Icons.update),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
