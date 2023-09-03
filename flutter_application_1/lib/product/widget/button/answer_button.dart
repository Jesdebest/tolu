// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class answerbutton extends StatefulWidget {
  const answerbutton({
    Key? key,
     this.onNumber,
  }) : super(key: key);

  final bool Function(int Number)? onNumber;

  @override
  State<answerbutton> createState() => _answerbuttonState();
}

class _answerbuttonState extends State<answerbutton> {

  Color? _backgrondcolor;
  
  @override
  Widget build(BuildContext context) {
    
    return  ElevatedButton(
    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(_backgrondcolor) ),  
    child: Text("a") , onPressed: () {
      

     final ruselt =  Random().nextInt(10);
      
    final response =  widget.onNumber?.call(ruselt)?? false;


   setState(() {
    _backgrondcolor = response ? Colors.green : Colors.red;
   });

    // if (response == true) {
    //   _backgrondcolor = Colors.green;
    // } else {
    //   _backgrondcolor = Colors.red;
    // }


    },);
  }
}