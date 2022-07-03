import 'package:flutter/material.dart';
//import 'dart:math' as math;

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
      title: 'Exams Practice',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title:const Text("Exam Practice")
        ),

        // floatingActionButton: FloatingActionButton(onPressed:(){}, child: const Icon(Icons.add),),
        // bottomNavigationBar: BottomNavigationBar(items: const [
        //   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        //   BottomNavigationBarItem(icon: Icon(Icons.business_center),label: 'Business'),
        //   BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search')
        // ],),
        
        // drawer: const Drawer(
        //   child: Center(child: Text("Hello from Drawer",style: TextStyle(fontSize: 20),),),
        // ),

        body:  
          ElevatedButton(
            child: const Text("Navigate"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScreenTwo()));
            },
          )

        //====================================
          // ListView.builder(
          //   itemBuilder: (_,index){
          //     return Container(
          //       color: randomColor(),
          //       width: 100,
          //       height: 100,
          //     );
          // },
          // )

        //======================================
        // ListView(
        //   scrollDirection: Axis.vertical,
        //   addAutomaticKeepAlives: false,
        //   children: [
        //     Container(
        //       color: Colors.red,
        //       width: 200,
        //       height: 200,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //       width: 200,
        //       height: 200,
        //     ),
        //     Container(
        //       color: Colors.orange,
        //       width: 200,
        //       height: 200,
        //     ),
        //     Container(
        //       color: Colors.black,
        //       width: 200,
        //       height: 200,
        //     ),
        //     Container(
        //       color: Colors.green,
        //       width: 200,
        //       height: 200,
        //     ),
        //     Container(
        //       color: Colors.red,
        //       width: 200,
        //       height: 200,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //       width: 200,
        //       height: 200,
        //     ),
        //     Container(
        //       color: Colors.orange,
        //       width: 200,
        //       height: 200,
        //     ),
        //     Container(
        //       color: Colors.black,
        //       width: 200,
        //       height: 200,
        //     ),
        //     Container(
        //       color: Colors.green,
        //       width: 200,
        //       height: 200,
        //     )
        //   ],
        // ),

        //====================================
        // Stack(
        //   children: [
        //     Image.network('https://stall.pk/wp-content/uploads/2022/03/iphone-5s-Pakistan-stall.pk_.png'),
        //     Positioned(
        //       child: 
        //         ElevatedButton(
        //           onPressed: (){}, 
        //           child: Text("Buy iPhone 5s"),
        //         ),
        //         top: 420,
        //         left: 240,
        //       ),
            
        //   ],
        // )

        //========================== 
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Text("Icons in Column", style: TextStyle(fontSize: 20),),
        //     Icon(Icons.abc),
        //     Icon(Icons.ac_unit),
        //     Icon(Icons.alarm),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: const [
        //       Text("Icons in Row", style: TextStyle(fontSize: 20)),
        //       Icon(Icons.mail),
        //       Icon(Icons.add),
        //       Icon(Icons.message)
        //     ],
        //     ),
        //   ],
        // ),

        //========================
        // Container(
        //   child: const Text("Some Text here.."),
        //   margin: const EdgeInsets.all(100),
        //   padding: const EdgeInsets.all(20),
        //   color: Colors.red,
        //   height: 100,
        //   width: 100,
        // )

    );
  }
  
  // randomColor() {
  //   return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  // }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen-Two"),
        backgroundColor: Colors.green,
      ),
      body: 
        const Center(
          child: Text("Hello form Screen-Two", style: TextStyle(fontSize: 20),),
        ),
    );
  }
}