import 'dart:convert';

import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments;
    var test=json.decode(data.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Column(
        children: [
          Text(test["Name"]),
          Text(test["Age"]),
          Text(test["Place"]),
        ],
      )
    );
  }

}