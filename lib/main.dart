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
  const HomePage({Key? key}) : super(key: key);

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
                Align(
                  alignment: Alignment(-1,-1),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.width / 8,
                    color: Colors.red,
                    child: Text("${MediaQuery.of(context).size.width /8}"),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.71,-0.9),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.width / 8,
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

// -1 - 20
// ? - 2.5

// 20