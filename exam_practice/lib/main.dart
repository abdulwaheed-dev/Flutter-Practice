import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title:const Text("Exam Practice")
        ),
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Icons in Column", style: TextStyle(fontSize: 20),),
            Icon(Icons.abc),
            Icon(Icons.ac_unit),
            Icon(Icons.alarm),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
              Text("Icons in Row", style: TextStyle(fontSize: 20)),
              Icon(Icons.mail),
              Icon(Icons.add),
              Icon(Icons.message)
            ],
            ),
          ],
        ),
        // Container(
        //   child: const Text("Some Text here.."),
        //   margin: const EdgeInsets.all(100),
        //   padding: const EdgeInsets.all(20),
        //   color: Colors.red,
        //   height: 100,
        //   width: 100,
        // )
      ),
    );
  }
}