import 'package:flutter/material.dart';

class conteriner_size_box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body:Column(
      children: [
        SizedBox(
        width: 200,
        height: 200,
        child: Text("a"*2000)  ,),
      Container(
        width: 500,
        height: 300,
        color: Colors.red,
        child: Text("aaaaaa"),

      )

      ],
    ) ,);
  }

  
}