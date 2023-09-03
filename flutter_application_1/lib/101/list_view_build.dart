import 'package:flutter/material.dart';



class listviewbuid extends StatefulWidget {
  const listviewbuid({super.key});

  @override
  State<listviewbuid> createState() => _listviewbuidState();
}

class _listviewbuidState extends State<listviewbuid> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(actions: [Center(child: Text("hello"))]),

    body: ListView.builder(itemBuilder: (context, index) {
      Text("aa");
    },),);
  }
}