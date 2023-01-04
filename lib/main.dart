import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child: const Center(child: Text("Flutter Assignment", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700, color: Colors.cyan),))),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
          child: Column(
        children: [
          Image.asset("assets/homePagePhoto.png"),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Text("Welcome to Fond",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                )),
          ),
          Center(
              child: Column(
            children: [
              SizedBox(
                width: 280,
                height: 43,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              new Divider(),
              SizedBox(
                width: 280,
                height: 43,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      foregroundColor: Colors.blue[800],
                      side: BorderSide(color: (Colors.blue[800])!, width: 2)),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 280,
                  height: 60,
                  child: Text(
                    "By using this app,  You agree to FOND’s\n Terms of use and privacy policy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ))
        ],
      )),
    );
  }
}
