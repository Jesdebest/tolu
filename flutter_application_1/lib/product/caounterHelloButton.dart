import 'package:flutter/material.dart';



class counterhellobuton extends StatefulWidget {
  const counterhellobuton({super.key});

  @override
  State<counterhellobuton> createState() => _counterhellobutonState();
}

class _counterhellobutonState extends State<counterhellobuton> {
  int merhabasayaci = 0;
  @override


  void merhabasayaciartma() {
    
    setState(() {
        ++  merhabasayaci;
        });
  }
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {

     merhabasayaciartma();

      }, child: Text("merhaba $merhabasayaci"));
      
  }
}