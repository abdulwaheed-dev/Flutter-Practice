// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}

// class EligiblityScreen extends StatelessWidget {
//   final ageController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<EligiblityScreenProvider>(
//         create: (context) => EligiblityScreenProvider(),
//         child: Builder(builder: (context) {
//           return Scaffold(
//             body: Container(
//               padding: EdgeInsets.all(16),
//               child: Form(child: Consumer<EligiblityScreenProvider>(
//                 builder: (context, provider, child) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,

//                             //if isEligible is null then set orange color else if it is true then set green else red
//                             color: (provider.isEligible == null)
//                                 ? Colors.orangeAccent
//                                 : provider.isEligible
//                                     ? Colors.green
//                                     : Colors.redAccent),
//                         height: 50,
//                         width: 50,
//                       ),
//                       SizedBox(
//                         height: 16,
//                       ),
//                       TextFormField(
//                         controller: ageController,
//                         decoration: InputDecoration(
//                           hintText: "Give your age",
//                         ),
//                       ),
//                       SizedBox(
//                         height: 16,
//                       ),
//                       Container(
//                         width: double.infinity,
//                         child: FlatButton(
//                           child: Text("Check"),
//                           color: Colors.blue,
//                           textColor: Colors.white,
//                           onPressed: () {
//                             //getting the text from TextField and converting it into int
//                             final int age =
//                                 int.parse(ageController.text.trim());

//                             //Calling the method from provider.
//                             provider.checkEligiblity(age);
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         height: 16,
//                       ),
//                       Text(provider.eligiblityMessage)
//                     ],
//                   );
//                 },
//               )),
//             ),
//           );
//         }));
//   }
// }

// class AgeNotifier extends ChangeNotifier {
//   String _message = "You have not given any input";
//   bool? isEligible;

//   checkElibility(int age) {
//     if (age >= 18) {
//       isEligible = true;
//       _message = "Yes you are eligible to apply";
//     } else {
//       isEligible = false;
//       _message = "Yes you are not eligible to apply";
//     }
//     notifyListeners();
//   }

//   // String get
// }

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              maxLength: 50,
              keyboardType: TextInputType.text,
              style: const TextStyle(fontSize: 24, fontFamily: 'DancingFont'),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  labelText: "Username"),
            ),
            TextField(
              controller: passwordController,
              maxLength: 5,
              keyboardType: TextInputType.text,
              obscureText: true,
              style: const TextStyle(fontSize: 24, fontFamily: 'DancingFont'),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  labelText: "Password"),
            ),
            TextButton(
              onPressed: () async {
                // Navigator.push(context,)
                // debugPrint("Username : " + usernameController.text);
                // debugPrint("Password : " + passwordController.text);

                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString('user', usernameController.text);
                prefs.setString('password', "sdksd");
                debugPrint(prefs.getString('user'));
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => WelcomeScreen()),
                // );
                // if (usernameController.text == "sooraj" &&
                //     passwordController.text == "kumar") {
                //   debugPrint("Correct");
                // }
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

// class CarLiscense extends StatelessWidget {
//   CarLiscense({Key? key}) : super(key: key);

//   TextEditingController ageController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Car Liscence Page"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             TextField(
//               controller: ageController,
//               maxLength: 2,
//               keyboardType: TextInputType.number,
//               style: const TextStyle(fontSize: 24),
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(5))),
//                   labelText: "Enter Age:"),
//             ),
//             TextButton(
//               onPressed: () {
//                 debugPrint("Age : " + ageController.text);

//                 if (int.parse(ageController.text) >= 18) {
//                   debugPrint("Correct");

//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => NextScreen()),
//                   );
//                 }
//               },
//               child: const Text("Apply"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class NextScreen extends StatelessWidget {
//   late SharedPreferences prefs;
//   late String un;
//   void loadCounter() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();

//     un = prefs.get('user').toString();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Welcome Page"),
//         ),
//         body: Center(child: Text(un)));
//   }
// }

// class StateExample extends StatefulWidget {
//   @override
//   State<StateExample> createState() {
//     return ScreenFour();
//   }
// }

// class ScreenFour extends State<StateExample> {
//   int count = 0;
//   int count2 = 0;
//   int _counter = 0;

//   @override
//   Widget build(Object context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Screen Four"),
//       ),
//       body: Center(
//           child: Column(
//         children: [
//           InkWell(
//             onTap: () {
//               setState(() {
//                 _counter++;
//               });
//               count2 += 10;
//               debugPrint("Counter is :" + '$_counter');
//             },
//             child: Text(
//               "Counter : " + _counter.toString(),
//               style: const TextStyle(fontSize: 30),
//             ),
//           ),
//           Text(
//             "Counter : " + count2.toString(),
//             style: const TextStyle(fontSize: 30),
//           )
//         ],
//       )),
//     );
//   }
// }

// class WelcomeScreen extends StatelessWidget {
//   late final String username;

//   setData() async {
//     final prefs = await SharedPreferences.getInstance();
//     username = prefs.getString("user") ?? "Guest";
//   }

//   // WelcomeScreen({Key? key}) : super(key: key){
//   //   final prefs = SharedPreferences.getInstance();
//   //   username = prefs.('user').toString();
//   // }
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(title: Text("Hello World")),
//       body: Center(child: Text(username)),
//     );
//   }
// }