import 'package:flutter/material.dart';

class textlearn extends StatelessWidget {
const textlearn({Key? key}) : super(key:key);
final String name = "veli";
@override
Widget build(BuildContext context) {
  return const Scaffold(
    body: Center(child: Column(
      children: [
        Text("welcome ",
        style:TextStyle(wordSpacing: 16,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.overline,
        color: Colors.black,
          ) ,),
      
        Text("welcome 2 ")
      
      ],

      
    ),),
  ) ;
}




}

class textlearn2 extends StatelessWidget{
  const textlearn2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Column(children: [

        Text("welcome2222",
        style: TextStyle(color: Colors.blue,
        fontSize: 16),
        ),
        
      ],),),
    );
  }


}
