import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class ChangeText extends StatefulWidget {
  ChangeTextState createState() => ChangeTextState();
}

class ChangeTextState extends State {
  String textHolder = 'Hello User';
  bool clicked = false;

  ChangeText() {
    clicked = !clicked;
    setState(() {
      if (clicked == true) {
        textHolder = "Hello 214255!!";
      } else if (clicked == false) {
        textHolder = "Hello User";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Text('$textHolder', style: TextStyle(fontSize: 21))),
      RaisedButton(
        onPressed: () => ChangeText(),
        child: Text('Click Me!'),
        textColor: Colors.white,
        color: Colors.blue,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),
    ])));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('lib/gojo.jpg'),
                ),
                //border:
              ),
            ),
            Text(
              "Zunaira Salam",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ]),
        ),
        body: Center(child: ChangeText()));
  }
}
