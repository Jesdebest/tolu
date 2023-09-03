import 'package:flutter/material.dart';


class paddingLearn extends StatelessWidget {
  const paddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: 
    Column(
      children: [ 

       Padding(padding: EdgeInsets.all(10), child: Container(color: Colors.white ,height: 100,width: 200,)),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
         child: Container(child: Text("ömer"),color: Colors.black ,height: 100,width: 200,),
       ),
  
      
      Padding(padding: EdgeInsets.only(right: 20,left: 30), child: Container(color: Colors.red ,height: 100,width: 200,)),
      Padding(padding: EdgeInsets.zero, child: Container(color: Colors.red ,height: 100,width: 200,)),
      Padding(padding: projectpadding().paddingvol1)
       
      
      
      ],
    ),
    
    
    );
  }
}


class projectpadding {
  final paddingvol1 = EdgeInsets.symmetric(vertical: 15);
  
}