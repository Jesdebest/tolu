import 'package:flutter/material.dart';



class colum_rowLearn extends StatelessWidget {
  const colum_rowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),body: 
    Row(
      children: [
        
        Column(
          children: [

         Expanded(flex: 4, child: Container(color: Colors.black,),),
         Expanded(flex:2 ,child: Container(color: Colors.white60,),),
         Expanded(flex:2 ,child: Container(color: Colors.pink,),),
         Expanded(flex:2 ,child: Container(color: Colors.purple,),),
          ],
        )
      ],
      


    ) ,);
  }
}