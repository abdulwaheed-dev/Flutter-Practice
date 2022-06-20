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
    return const Center(
      child: Text("Hello World.!", style: TextStyle(color: Colors.green),),
    );
  }

}
