import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.teal,
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                  width: (MediaQuery.of(context).size.width ~/ 8).toDouble(),
                  height:  (MediaQuery.of(context).size.width ~/ 8).toDouble(),
                  color: Colors.red,
                  child: Text("${MediaQuery.of(context).size.width /8}"),
                ),),
                Positioned(
                  top: (MediaQuery.of(context).size.width ~/ 8).toDouble(),
                  left: (MediaQuery.of(context).size.width ~/ 8).toDouble(),
                  child: Container(
                    width: (MediaQuery.of(context).size.width ~/ 8).toDouble(),
                    height:  (MediaQuery.of(context).size.width ~/ 8).toDouble(),
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}

// 450 - 20
// 51 - 2.5 / 10

