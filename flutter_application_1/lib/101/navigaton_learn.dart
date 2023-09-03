import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/custom_widget.dart';
import 'package:flutter_application_1/101/image_learn.dart';

import 'navigat_detail_learn.dart';


class navigatonlearn extends StatefulWidget {
  const navigatonlearn({super.key});

  @override
  State<navigatonlearn> createState() => _navigatonlearnState();
}

class _navigatonlearnState extends State<navigatonlearn> with nagotritowidget {
  @override

  List<int>Seleceteditems = [];

  void addselect(int index) {
    
    setState(() {
      Seleceteditems.add(index);
    });
  }

  Widget build(BuildContext context) {
    return  Scaffold(body: ListView.builder(itemBuilder: (context, index) {
      return TextButton(onPressed: () async {
        
        final response = await navigotrtowidgetNormal<bool>(context, navigetlearn());

      if (response == true) { 
      addselect(index);
        
      }


      },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Placeholder(color: Seleceteditems.contains(index) ? Colors.green : Colors.red ),
        ),
      );

    },)   ,
      floatingActionButton: FloatingActionButton( 
        child: Icon(Icons.add) ,
        onPressed: () async {

        final response = await navigotrtowidgetNormal<bool>(context, navigetlearn());

      if (response == true) {
      
        
      }

      }),
    );
  }
}

mixin  nagotritowidget{

  void navigotrtowidget(BuildContext context,Widget widget) {
    
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            
            return widget;


          },fullscreenDialog: true,
          settings: RouteSettings()));
  }

 Future<T?> navigotrtowidgetNormal<T>(BuildContext context,Widget widget) {
    
    return Navigator.of(context).push<T>(MaterialPageRoute(builder: (context) {
            
            return widget;


          },fullscreenDialog: true,
          settings: RouteSettings()));
  }

}