import 'package:flutter/material.dart';

import '../tolutamam/tolusayfa1.dart';

class formlearnview extends StatefulWidget {
  const formlearnview({super.key});

  @override
  State<formlearnview> createState() => _formlearnviewState();
}

class _formlearnviewState extends State<formlearnview> {
  
  GlobalKey<FormState> _key = GlobalKey();

  @override

  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),
    body: Column(
      children: [

        DropdownButtonFormField<String>(
          validator: formfieldnotempy().isnotempty ,
          
          items: [
            DropdownMenuItem(child: Text("a") ,value: "v",onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => ToluDeneme2()));
            },),
            DropdownMenuItem(child: Text("b"),value: "v1"),
            DropdownMenuItem(child: Text("c"),value: "v2"),
            
          ],
          

          onChanged:(value) {
            ElevatedButton(onPressed: (){

              if (_key.currentState?.validate() ?? false) {
                Text("aa");
              }


            }, child: Text("save"),);
          },
        ),


        Form(
          key: _key ,
          autovalidateMode: AutovalidateMode.always,
          child: TextFormField(validator: formfieldnotempy().isnotempty),

          
          
        
        ),
        ElevatedButton(onPressed: (){
          if (_key.currentState?.validate() ?? false) {
            Text("ok");
            
          }
        }, child: Text("save"))
        
      ],
    ),
    
    );
  }
}


class formfieldnotempy {

  String? isnotempty(String? data) {
    
    return (data?.isNotEmpty ?? false) ? null: "boşgeçilmez";
  }
  
}