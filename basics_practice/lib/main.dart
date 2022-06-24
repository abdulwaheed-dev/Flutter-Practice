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

class Screen2 extends StatelessWidget{
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen-2"),
      ),
      body: const Center(
        child: Text("This is Screen-2",style: TextStyle(fontSize: 20),),
      ),
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
              //debugPrint("Row Clicked : " + (index+1).toString());
              //_showDialog(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()));
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
  
  void _showDialog(BuildContext context){
    AlertDialog alert = AlertDialog(
      title: Text("Sample TitleText"),
      content: Text("Sample Content Text"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("OK"),),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Cancel")),
      ],
    );

    SimpleDialog sDialog = SimpleDialog(
      title: const Text("Set Backup Account"),
      children: [
        SimpleDialogItem(icon:Icons.account_circle, color:Colors.orange, text:'user01@gmail.com',),

        SimpleDialogItem(icon:Icons.account_circle, color:Colors.green, text:'user02@gmail.com',),

        SimpleDialogItem(icon:Icons.add_circle, color:Colors.grey, text:'Add Account',),
      ],
      
      // onPressed:(){
      //   Navigator.pop(context,'user00@gmail.com');
      // },

    );

    showDialog(context: context, builder: (context){
      return alert;
    }
    );

    }
  }
  
  class SimpleDialogItem extends StatelessWidget{
    SimpleDialogItem({
       required this.icon,
       required this.color,
       required this.text
    });

    final IconData icon;
    final Color color;
    final String text;

    @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      //height: 100,
      child: Card( 
        child: Padding(padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Icon(icon,color: color,size: 50,),
          Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0), 
          child: 
          Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(
            text,
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
