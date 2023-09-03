import 'package:flutter/material.dart';


class iconLearn extends StatelessWidget {
  const iconLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("hello")),),
    
    body: Column
    
    (children: [

      IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined,color: iconcolors().froyt ,)), 

      IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined,color: Colors.red,size: iconsize().iconsmall )) 

    ],),

    
    );
  }
}

class iconsize{

  final double iconsmall = 40;

}

class iconcolors{

  final Color froyt = Color(0xffED617A);

}
