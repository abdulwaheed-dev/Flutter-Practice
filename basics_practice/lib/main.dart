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
      home: MyHomePage(title: 'Flutter Basics'),
    );
  }
}

class MyHomePage extends StatelessWidget{

  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  List<Product> products = [
    Product(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
    Product(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
    Product(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
    Product(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
    Product(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
    Product(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
    Product(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
    Product(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
    Product(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
    Product(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
    Product(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
    Product(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
    Product(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
    Product(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
    Product(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
    Product(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
    Product(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
    Product(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
    Product(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
    Product(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
    Product(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Learning Flutter Basics")),
      body:
    //========================================
    //3- tirdly implementing by listview, and data is fteched by itself via Product-model-class   
      ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
          return InkWell  //replace with InkWell or GestureDetector (both perfroms the same work of even handling, inkwell is different as it creates a hand foucs cursor for event handling and highlights when that widget is clicked)
          (child: ProductBox(
            image: products[index].image, 
            title: products[index].title, 
            desc: products[index].desc, 
            price: products[index].price
            ),
            onTap: (){
              debugPrint("Row Clicked : " + (index+1).toString());
            },
          );
        },
      )
    //========================================
    //2- secondly implementing by listview, but data was fteched by ourself   
        //  ListView(children: [
        //   ProductBox(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
        //   ProductBox(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
        //   ProductBox(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
        //   ProductBox(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
        //   ProductBox(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
        //   ProductBox(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
        //   ProductBox(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
        //   ProductBox(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
        //   ProductBox(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
        //   ProductBox(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
        //   ProductBox(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
        //   ProductBox(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
        //  ],) 
        
    //========================================
    //1- firstly implementing by adding product one by one by ourself
      // Column(
      //   children: [
      //     ProductBox(image: "jaun.jpg",title: "Jaun Eliya", desc: "Poet", price: "1234",),
      //     ProductBox(image: "done.jpg",title: "Done Icon", desc: "Vector Icon", price: "123",),
      //     ProductBox(image: "naam.jpg",title: "Jaun Eliya Poetry", desc: "Poetry", price: "12",),
      //   ],
      // ),
      
    );
  }

}

//product-box class
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

//product-model class
class Product {

  Product({
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

}