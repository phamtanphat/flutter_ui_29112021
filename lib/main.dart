import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    hintText: "Input Number 1",
                    // disabledBorder: InputBorder.none,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    )
                  ),
                ),
                TextField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                      hintText: "Input Number 2",
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

