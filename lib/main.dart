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
        title: Text("Calculator"),
      ),
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(5),
            constraints: BoxConstraints.expand(),
            child: Column(
              children: [
                TextField(
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Input Number 1",
                    // disabledBorder: InputBorder.none,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    )
                  ),
                )
              ],
            ),
      )),
    );
  }
}

// 450 - 20
// 51 - 2.5 / 10

