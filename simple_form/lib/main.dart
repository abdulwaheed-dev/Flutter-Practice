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
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget{
 const MyHomePage({Key? key, required this.title}) : super(key:key);

  final String title;

  @override
  Widget build(BuildContext context){
    
    const title = 'Simple Form Example';

     return MaterialApp(
      title: title,
      home: Scaffold(appBar: AppBar(title: const Text("Simple Form"),),
      body: const MyCustomForm(),),
     ); 
  } 
}

// Create a Form widget.  
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  

// Creating State class. This class holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Name',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.phone),  
              hintText: 'Enter your phone number',  
              labelText: 'Phone',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: Icon(Icons.calendar_today),  
            hintText: 'Enter your birthdate',  
            labelText: 'Birthdate',  
            ),  
           ),  
          Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: const ElevatedButton(  
                onPressed: null,  
                child: Text('DONE'),  
              )),  
        ],  
      ),  
    );  
  }  
}
