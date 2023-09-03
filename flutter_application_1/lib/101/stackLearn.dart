import 'package:flutter/material.dart';


class stacklearn extends StatelessWidget {
  const stacklearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),body:
    
    Stack(children: [

      Container(
        color: Colors.red,
        width: 100,

      ),
      Padding(
        padding: EdgeInsets.only(left: 50),
        child: Container(color: Colors.blue,
        width: 100,),
      ),
      
      
        




    ],)
     ,);
  }
}