import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/image_learn.dart';


class pageviewlearn extends StatefulWidget {
   pageviewlearn({super.key});
  

  @override
  State<pageviewlearn> createState() => _pageviewlearnState();
}

class _pageviewlearnState extends State<pageviewlearn> {
  final _pagecontrol = PageController(viewportFraction: 0.7);
  int  _currnetpageindex = 0;
  void updatepage(int index) {
    setState(() {
      _currnetpageindex = index;
      
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    floatingActionButton: Row(
        children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(_currnetpageindex.toString()),
        ),
        Spacer(),
        FloatingActionButton(onPressed: (){
          _pagecontrol.previousPage(duration: _duracintodod().saniye, curve: Curves.slowMiddle);


        },
        child: Icon(Icons.chevron_left)),Padding(
          padding: const EdgeInsets.only(),
          child: FloatingActionButton(onPressed: (){
             _pagecontrol.nextPage(duration: _duracintodod().saniye, curve: Curves.slowMiddle);
          },child: Icon(Icons.chevron_right)),
        ),
      ],
      
    ),
    
    body:PageView(
      padEnds: false,
      controller: _pagecontrol,
      onPageChanged :updatepage ,
      
      children: [
     
      imageLearn(),
      Container(color: Colors.black,),
      Container(color: Colors.white,),
      Container(color: Colors.red,),

    ],) ,);
  }
}


class _duracintodod {
  
 final saniye  = Duration(seconds: 1);

}