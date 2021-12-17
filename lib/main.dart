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
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                SizedBox(height: 10),
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
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                      "Ket qua = 5" ,
                      style: TextStyle(
                          color: Colors.red ,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                      )
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: ElevatedButton(onPressed: (){}, child: Text("+")),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ElevatedButton(onPressed: (){}, child: Text("-")),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: ElevatedButton(onPressed: (){}, child: Text("*")),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ElevatedButton(onPressed: (){}, child: Text("/")),
                      ),
                    )
                  ],
                )
              ],
            ),
      )),
    );
  }
}

// 450 - 20
// 51 - 2.5 / 10

