import 'package:flutter/material.dart';

class scoffoldLearn extends StatelessWidget {
  const scoffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("scafoold title"),),
    backgroundColor: Colors.red,
    drawer: const Drawer(),
    body: Text("merhaba"),
    bottomSheet: Text("data123321"),
    bottomNavigationBar: BottomNavigationBar(items: const[
    BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "a" ),
    BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "b")]),
    
    
    );
     
  }
}