import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/button_learn.dart';


class tolubutton extends StatefulWidget {
  const tolubutton({super.key});

  @override
  State<tolubutton> createState() => _tolubuttonState();
}

class _tolubuttonState extends State<tolubutton> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),body: 
      OutlinedButton(onPressed: (){}, child: Text("sayfa 2 "))

    
    ,);
  }
}

class tolubuttonwidget extends StatelessWidget {
  const tolubuttonwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: (){}, child: Text("sayfa"));
  }
}