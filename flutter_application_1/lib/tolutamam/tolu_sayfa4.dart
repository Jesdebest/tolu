import 'package:flutter/material.dart';
import 'package:flutter_application_1/tolutamam/denemetolu.dart';
import 'package:flutter_application_1/tolutamam/tolu_sayfa3.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa1.dart';


import 'tolusayfa2.dart';



class tolusayfa4 extends StatefulWidget {
  const tolusayfa4({super.key});

  @override
  State<tolusayfa4> createState() => _tolusayfa4State();
}

class _tolusayfa4State extends State<tolusayfa4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: 

      GridView.count(crossAxisCount: 3,children: [
        SizedBox(),
        denemetolusayfa(),
        SizedBox(),


      ],)
    );
  }
}

