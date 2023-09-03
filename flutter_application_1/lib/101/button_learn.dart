

import 'package:flutter/material.dart';

class buttonlearn extends StatelessWidget {
  const buttonlearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (appBar: AppBar(),
    body: 
    Column(children: [
      TextButton(onPressed:(){}, child: Text("aa"),
      style: OutlinedButton.styleFrom(backgroundColor: Colors.red),),
      
      
      
      
      ElevatedButton(onPressed: () {}, child: Text("bbbb")),
      IconButton(onPressed: (){}, icon: Icon(Icons.abc)),
      FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),),
      OutlinedButton(onPressed: (){}, child: Column(
        children: [
          Text("aaabb"),
          
          
        
      Container(height: 200,color: Colors.white,), 

      ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.black)  ,
      onPressed: (){}, child: Text("place build",
      style:Theme.of(context).textTheme.headlineLarge ,
      
      
      ))
      

      ],
      )),
      

    ],),);
  }
}