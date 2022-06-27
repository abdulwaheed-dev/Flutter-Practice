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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Widgets"),
      ),
      body: 
      const Center(
        child: TextField(
          //obscureText: true, //use this to make textField as passwordField.
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center, //change textAlignment
          maxLines: null, //change to null to make it dynamic
          //maxLength: 20, //change the maximun input length
          decoration: InputDecoration(
            //icon: Icon(Icons.search), //icon at starting of textfiled
            prefixIcon: Icon(Icons.search), //icon inside the textfiled
            //suffixIcon: Icon(Icons.search), //icon at the end of textfiled
            border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
            labelText: "Some Text Here"
          ),
          ),
      ),
      );
  }

  
}
