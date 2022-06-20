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
      body: Center(
      child: //Image.asset("assets/images/jaun.jpg")
      //Image.asset("assets/images/naam.jpg",fit: BoxFit.fill)
      Image.network("https://i.pinimg.com/originals/13/33/c3/1333c30b645768cf780910921007704c.png",fit: BoxFit.fill)
    ),
    );
  }

}
