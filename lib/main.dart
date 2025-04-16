import 'package:atividade1/loginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LOGIN",
      home: Scaffold(
        appBar: AppBar(
          title: Text("LOGIN"),
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,

        body: Login()
      ),
    );
  }
}
