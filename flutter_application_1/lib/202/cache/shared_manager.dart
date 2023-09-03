import 'package:flutter/material.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa1.dart';



class deneme16 extends StatefulWidget {
  const deneme16({super.key});

  @override
  State<deneme16> createState() => _deneme16State();
}

class _deneme16State extends State<deneme16> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),
    body: 
     DropdownButtonFormField<String>(items: [
      DropdownMenuItem(value: "v1",child: Text("aa"),onTap: () {
        
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => ToluDeneme2()));

      },),
      DropdownMenuItem(value: "v2",child: Text("bb")),
      DropdownMenuItem(value: "v3",child: Text("cc")),


     ], onChanged: (v){})

    ,);
  }
}