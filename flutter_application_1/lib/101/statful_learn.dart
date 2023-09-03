import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/caounterHelloButton.dart';
import 'package:flutter_application_1/product/langues/langues.dart';



class statelfulllearn extends StatefulWidget {
  const statelfulllearn({super.key});

  @override
  State<statelfulllearn> createState() => _statelfulllearnState();
}

class _statelfulllearnState extends State<statelfulllearn> {
  
  final String title = "1" ;

  int merhabasayaci = 0;

  int countvalue = 0;


  void arttiranfonksiyon() {

    setState(() {
      countvalue = countvalue + 1;

    });
  }


  void azaltanfonksiyon() {
    setState(() {
      countvalue = countvalue - 1;
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(Langues().hellotitle),),
     
    
    floatingActionButton: 
    addiconlogo(),
    
    
    body:

    Column(children: [
      
      Center(child: Text(countvalue.toString(),style: Theme.of(context).textTheme.headlineLarge)),
      counterhellobuton(),

     
    
    
    ],) 
    
    
    
    );
  }

  Row addiconlogo() {
    return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      FloatingActionButton(onPressed: () {
        arttiranfonksiyon();
      },
      child: Icon(Icons.add),
      
      ),
      _newmetodadding(),
    ],
    
  );
  }

  Padding _newmetodadding() {
    return Padding(
        padding:  EdgeInsets.only(left: 10),
        child: FloatingActionButton(onPressed: () {azaltanfonksiyon();},
        child: Icon(Icons.remove),
        
        ),
      );
  }
}