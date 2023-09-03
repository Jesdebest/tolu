 import 'package:flutter/material.dart';
import 'package:flutter_application_1/demos/password_demos_textfield.dart';



 class themelearnview extends StatefulWidget {
  const themelearnview({super.key});

  @override
  State<themelearnview> createState() => _themelearnviewState();
}

class _themelearnviewState extends State<themelearnview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),body: 


    

    Column(
      children: [
        passworddemos(),
        Card(child: 
        
        Container(width: widgetcardsize.circleprofilewidt.value(),
        child: SizedBox())

        ,),
      ],
    )
    ,);
  }
}

enum widgetcardsize{

normalcardheighd,
circleprofilewidt

}

extension widgetsizeExtension on widgetcardsize{

  double value() {
    switch (this) {
      case widgetcardsize.circleprofilewidt:
      return 30;
      case widgetcardsize.normalcardheighd:
      return 25;
      
    }

  }



}