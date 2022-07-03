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
          backgroundColor: Colors.indigo,
          title:const Text("Exam Practice")
        ),
        floatingActionButton: FloatingActionButton(onPressed:(){}, child: const Icon(Icons.add),),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.business_center),label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search')
        ],),
        
        drawer: Drawer(
          child: Center(child: Text("Hello from Drawer",style: TextStyle(fontSize: 20),),),
        ),

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

      ),
    );
  }
}