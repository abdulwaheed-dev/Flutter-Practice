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
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  int id = 1;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basic Widgets in Flutter"),),
      body: 
        Row(
          children: [
              const Text('Are your Married', style: TextStyle(fontSize: 20),),
              Switch(value: false, onChanged:(newValue){ }),

              const Text('Are your Single', style: TextStyle(fontSize: 20),),
              Switch(value: true, onChanged:(newValue){ }),

          ],
        )
    );
  }


}

