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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  String username="";

  TextEditingController userController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Widgets"),
      ),
      body: 
      Center(
        child: Column(
          children: [
            TextField(
          // onChanged: (value){
          //   debugPrint("Text = "+value);
          //   username = value;
          // },
          controller: userController,
          //obscureText: true, //use this to make textField as passwordField.
          style: const TextStyle(fontSize: 20),
          textAlign: TextAlign.center, //change textAlignment
          maxLines: null, //change to null to make it dynamic
          //maxLength: 20, //change the maximun input length
          decoration: const InputDecoration(
            //icon: Icon(Icons.search), //icon at starting of textfiled
            prefixIcon: Icon(Icons.search), //icon inside the textfiled
            //suffixIcon: Icon(Icons.search), //icon at the end of textfiled
            border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
            labelText: "Some Text Here"
          ),
          ),
          TextButton(onPressed: (){debugPrint("Username: ${userController.text}");}, child: const Text("Click Me"),)
          ],
        ),
      ),
      );
  }

  
}
