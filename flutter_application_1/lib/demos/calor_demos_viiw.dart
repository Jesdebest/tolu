
import 'dart:developer';

import 'package:flutter/material.dart';


class colorsdemos extends StatefulWidget {
  const colorsdemos({super.key, required this.initthecolor});
  final Color? initthecolor;

  @override
  State<colorsdemos> createState() => _colorsdemosState();
}
class _colorsdemosState extends State<colorsdemos> {
  
  Color? _backgrondcolor;

  @override
  void initState() {
    super.initState();
    _backgrondcolor = widget.initthecolor ?? Colors.transparent ;
  }

@override
  void didUpdateWidget(covariant colorsdemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    inspect(widget);
    if (widget.initthecolor != _backgrondcolor && widget.initthecolor != null ) {
      updatebackgroundcolor(widget.initthecolor!);
      
    }
  }
  void updatebackgroundcolor(Color color) {
    setState(() {
      _backgrondcolor = color;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor : _backgrondcolor  ,

      bottomNavigationBar: BottomNavigationBar(

      onTap: buttonpress,
      
      items:const
      [ 
        
        BottomNavigationBarItem(icon: _conterinercolors(colors: Colors.red,),label: ("kirmizi"),),
        BottomNavigationBarItem(icon: _conterinercolors(colors: Colors.yellow,) ,label: ("yellow")),
        BottomNavigationBarItem(icon: _conterinercolors(colors: Colors.blue,) ,label: ("blue"))
        


      ]));
  }

  void buttonpress(int value) {
      if (value == _Mycolors.red.index ) {
        updatebackgroundcolor(Colors.red);
      }else if (value == _Mycolors.yellow.index)
      {
        updatebackgroundcolor(Colors.yellow);
  
      }else if (value == _Mycolors.blue.index){
        updatebackgroundcolor(Colors.blue);
      }
  
      
    }
}

enum _Mycolors {red,yellow,blue }

class _conterinercolors extends StatelessWidget {
  const _conterinercolors({
    super.key, required this.colors,
  });
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(color: colors,width: 10,height: 10,);
    
  }
}