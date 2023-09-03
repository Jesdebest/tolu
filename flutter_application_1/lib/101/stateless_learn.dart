import 'package:flutter/material.dart';



class statesleran extends StatelessWidget {
  const statesleran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (appBar: AppBar(),
      body: 
    Column
    (children: [
      
      titletextwidget(text: "veli123"),
      titletextwidget(text: "veli123"),
      titletextwidget(text: "veli123"),
      titletextwidget(text: "veli123"),
      titletextwidget(text: "veli123"),

      _customcontainer(),
      
      newiconbutton(),
      newiconbutton(),
      newiconbutton(),newiconbutton()

    ],) ,);
  }
}

class newiconbutton extends StatelessWidget {
  const newiconbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm), iconSize: 50,  );
  }
}

class _customcontainer extends StatelessWidget {
  const _customcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.red,border: Border.symmetric()));
  }
} 

class titletextwidget extends StatelessWidget {
  const titletextwidget({Key? key,required this.text}) : super(key: key) ;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    );
  }
}