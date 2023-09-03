
import 'package:flutter/material.dart';



class card_learn extends StatelessWidget {
  const card_learn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),body: Column(children: [
      
      newcardlearn().newcard1,
      newcardlearn().newcard2,

      Card(
        child: SizedBox(width: 50,height: 50, child: Center(child: Text("ömer")),), margin: EdgeInsets.symmetric(vertical: 50,horizontal: 50) ,color: Colors.red,
        shape: StadiumBorder(),
        
      ),
      


    ],) );
    
  }
}

class newcardlearn {

  final newcard1 = Card(child: SizedBox(width: 50,height: 50,), margin: EdgeInsets.symmetric(vertical: 50,horizontal: 50) ,color: Colors.red,);
  final newcard2 = Card(child: SizedBox(width: 50,height: 50,), shape: StadiumBorder() );
}