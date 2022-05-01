import 'package:flutter/material.dart';
import 'package:navigating_and_routing_ex2/thirdpage.dart';
import 'secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/',
      routes: {
        '/':(context)=>MyHomePage(),
        '/SecondPage':(context)=>SecondPage(),
        '/ThirdPage':(context)=>ThirdPage()
      },
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
         title: Text("Navigating and Routing Ex 2"),
     ),
     body: Center(
       child: ElevatedButton(
           onPressed: (){
             Navigator.pushNamed(context, '/SecondPage');
           },
           child: Text("Move to Second Page")
       ),
     ),
   );
  }
}
