import 'package:flutter/material.dart';



class navigetlearn extends StatefulWidget {
  const navigetlearn({super.key});
  
  @override
  State<navigetlearn> createState() => _navigetlearnState();
}

class _navigetlearnState extends State<navigetlearn> {
  @override
  
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),
    body: Center(child: ElevatedButton.icon(onPressed: (){
      Navigator.of(context).pop(true);

    }, icon: Icon(Icons.check), label: Text("Onayla")))
    
    
    ,);
  }
}