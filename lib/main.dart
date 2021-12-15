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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Container(
                      constraints: BoxConstraints.expand(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: Container(
                                color: Colors.red,
                                child: Center(child: Text("A")),
                              )
                          ),
                          Expanded(
                              child: Container(
                                color: Colors.green,
                                child: Center(child: Text("B")),
                              )
                          ),
                          Expanded(
                              child: Container(
                                color: Colors.blueGrey,
                                child: Center(child: Text("C")),
                              )
                          ),
                          Expanded(
                              child: Container(
                                color: Colors.blue,
                                child: Center(child: Text("D")),
                              )
                          )
                        ],
                      )
                  )
              ),
              Expanded(
                  child: Container(
                      color: Colors.grey,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: Container(
                                color: Colors.red,
                                child: Center(child: Text("A")),
                              )
                          ),
                          Expanded(
                              child: Container(
                                color: Colors.green,
                                child: Center(child: Text("B")),
                              )
                          ),
                          Expanded(
                              child: Container(
                                color: Colors.blueGrey,
                                child: Center(child: Text("C")),
                              )
                          ),
                          Expanded(
                              child: Container(
                                color: Colors.blue,
                                child: Center(child: Text("D")),
                              )
                          )
                        ],
                      )
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
