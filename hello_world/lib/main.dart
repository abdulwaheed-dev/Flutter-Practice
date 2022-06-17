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
      title: 'Hello World',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue
      ),
      home: const MyHomePage(title: 'Hello World Flutter App'),
    );
  }
}

class MyHomePage extends StatelessWidget{
 const MyHomePage({Key? key, required this.title}) : super(key:key);

  final String title;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key:key,
      appBar: AppBar(
        title: const Text("TestTitle")
        ),
      body:
      const Center(child: Text.rich(TextSpan(children: <TextSpan>[
        TextSpan(text: "Don't have an account? ", style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromARGB(255, 255, 13, 0))),
        TextSpan(text: " Sign up here!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
      ])),) 
      // const Center(child: Text(
      //   "Hello World",
      //   style: TextStyle(fontSize: 32, color: Colors.blue),
      //   )
      //   ),
    );
  }
 
}
