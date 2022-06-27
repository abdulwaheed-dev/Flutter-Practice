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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  int counter = 0;
  int counter2 = 0;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Stateful-Widget"),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
            onTap: (){
              setState(() {
                counter++;                
              });
              counter2+=10;

              debugPrint("Counter : $counter");
            },

            child:Text("Counter : $counter", style: const TextStyle(fontSize: 20),),

          ),
          
          Text("Counter : $counter2", style: const TextStyle(fontSize: 20),),

          ],
        )

      );
    }
}

