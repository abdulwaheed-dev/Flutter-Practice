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
          const Text('Select Your Gender:   ', style: TextStyle(fontSize: 20),),  
          const Text('Male', style: TextStyle(fontSize: 20),
            ),
          Radio(
          value: 2,
          groupValue: id,
          onChanged: (val) {
            // setState(() {
            //   predominant = 'recessiva_bb';
            //   id = 2;
            // });
          },
        ),
        // more widgets ...

        const Text('Female', style: TextStyle(fontSize: 20),
            ),
          Radio(
          value: 2,
          groupValue: id,
          onChanged: (val) {
            // setState(() {
            //   predominant = 'recessiva_bb';
            //   id = 2;
            // });
          },
        ),

        ]
      ),
      
    );
  }


}

