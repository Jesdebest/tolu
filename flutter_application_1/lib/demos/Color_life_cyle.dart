import 'package:flutter/material.dart';
import 'package:flutter_application_1/demos/calor_demos_viiw.dart';


class colorlifecyle extends StatefulWidget {
  const colorlifecyle({super.key});
  
  @override
  State<colorlifecyle> createState() => _colorlifecyleState();
}

class _colorlifecyleState extends State<colorlifecyle> {
  Color? _backgrondcolor;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      actions: [IconButton(onPressed: (){

        setState(() {
          _backgrondcolor = Colors.pink;
        });

        
      }, icon: Icon(Icons.clear_sharp))],

    )
    ,body: 
    Column(
      children: [Spacer(),Expanded(child: colorsdemos(initthecolor: _backgrondcolor))],
      
    )
    ,);
  }
}