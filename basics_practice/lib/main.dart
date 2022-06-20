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
      body: SingleChildScrollView(
        child: Column(
        children: [
          ProductBox(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
          ProductBox(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
          ProductBox(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
        ],
      ),
      )
    );
  }

}

class ProductBox extends StatelessWidget{
  
  ProductBox({
    Key? key,
    required this.image,
    required this.title,
    required this.desc,
    required this.price
  });

  final String image;
  final String title;
  final String desc;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card( 
        child: Padding(padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Image.asset("assets/images/$image"),
          Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0), 
          child: 
          Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            desc,
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            price.toString(),
            style: const TextStyle(fontSize: 20),
          ),
        ],)
           ,)
        
        ],
        ),
        )
      ),
    );
  }

}
