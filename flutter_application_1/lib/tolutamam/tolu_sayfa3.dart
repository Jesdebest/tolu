import 'package:flutter/material.dart';
import 'package:flutter_application_1/tolutamam/tolu_sayfa4.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa1.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa2.dart';

import 'denemetolu.dart';



class tolusayfa3 extends StatefulWidget {
  const tolusayfa3({super.key});

  @override
  State<tolusayfa3> createState() => _tolusayfa3State();
}

class _tolusayfa3State extends State<tolusayfa3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: 
      
      GridView.count(crossAxisCount: 3,
      children: [
        SizedBox(),
        denemetolusayfa(),
        SizedBox(),

        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        Image.asset("assets/toluburun.png"),
        


      ],
      
      
      ),
      
    );
  }
}

