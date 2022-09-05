import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(Home_Page());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Home_Page();
//   }
// }

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  String myText = "hello Flutter team";
  Color myColor = Colors.amber;
  double myContainerWidth = 250;
  Icon myIcon = Icon(Icons.home);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Container(
        width: myContainerWidth,
        color: myColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      myText = "i have updated from button #1";
                      myColor = Colors.pinkAccent;
                    });
                  },
                  child: Text("button #1")),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      myText = "i have updated from button #2";
                      myContainerWidth = 400;
                    });
                  },
                  icon: Icon(Icons.laptop),
                  label: Text("button #2")),
              MaterialButton(
                disabledColor: Colors.grey,
                textColor: Colors.white,
                height: 40.5,
                splashColor: Colors.purple,
                onPressed: () {
                  setState(() {
                    myIcon = Icon(Icons.person);
                  });
                },
                color: Colors.blue,
                child: Text("button # 3"),
              ),
              Text(
                myText,
                style: TextStyle(fontSize: 25),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      myIcon = Icon(Icons.person);
                    });
                  },
                  icon: myIcon)
            ],
          ),
        ),
      ),
    ));
  }
}
