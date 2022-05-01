import 'dart:convert';

import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget{
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController ageTextEditingController = TextEditingController();
  TextEditingController placeTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Second Page"),
     ),
     body:Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         TextField(
           controller: nameTextEditingController,
           decoration: InputDecoration(
               hintText: "Name"
           ),
         ),
         TextField(
           controller: ageTextEditingController,
           decoration: InputDecoration(
               hintText: "age"
           ),
         ),
         TextField(
           controller: placeTextEditingController,
           decoration: InputDecoration(
               hintText: "place"
           ),
         ),
         ElevatedButton(
           onPressed: (){
             Navigator.pushNamed(context, '/ThirdPage',arguments:json.encode(
                 {
                      'Name': nameTextEditingController.text,
                      'Age': ageTextEditingController.text,
                      'Place': placeTextEditingController.text
                    }
                    )
             );
           },
           child: Text("Send Data"),
         ),
       ],
     )
   );
  }

}