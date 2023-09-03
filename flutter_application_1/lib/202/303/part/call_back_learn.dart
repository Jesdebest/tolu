import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/widget/button/answer_button.dart';
import 'package:flutter_application_1/product/widget/button/loading.dart/loading.dart';
import 'package:flutter_application_1/product/widget/callbackdropdown.dart';

class callbacklearn extends StatefulWidget {
  const callbacklearn({super.key});

  @override
  State<callbacklearn> createState() => _callbacklearnState();
}

class _callbacklearnState extends State<callbacklearn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: 
    Column(
      children: [
        
        Callbackdropdown(onUserSelected: (callbackuser){
        }),

        answerbutton(
          onNumber: (Number) {
            return Number % 3 == 1;
          },
        ),
        isloading(title: "save", onpressed: () async {
          await Future.delayed(Duration(seconds: 5));

        },)
      ],

    )
    ,);
  }
}

class callbackuser {
  final String name;
  final int id;

  callbackuser(this.name, this.id);
  
  static List<callbackuser> dummyuser() {
    return[
    callbackuser("v", 1),
    callbackuser("vb", 2),
    callbackuser("vbx", 3)
    ];
  }


}