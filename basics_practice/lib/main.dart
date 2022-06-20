import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Basics'),
    );
  }
}

class MyHomePage extends StatelessWidget{

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Learning Flutter Basics")),
      body: const Center(
      child:Text.rich(TextSpan(children: [
        TextSpan(text: "Don't have an account?", style: TextStyle(fontSize: 24)),
        TextSpan(text: " Sign up Here!", style: TextStyle(fontSize: 24, color: Colors.blue))
      ])) 
    ),
    );
  }

}
