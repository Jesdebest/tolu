import 'package:flutter/material.dart';

class customwidget extends StatelessWidget {
  const customwidget({super.key});
  final String text12 = "food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body:   Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Column(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width, child: customfoodbutton()),
            SizedBox(height: 100,),

            Center(child: customfoodbutton(),)
          ],
          
        ),
      ),
    ),
     
    
    
    
    );
  }
}

class selectioncolors {

  final Color selectioncolors1 = Colors.red;
  final Color whitecolors = Colors.white;
}

class customfoodbutton extends StatelessWidget  {
   customfoodbutton({super.key});
  final String title = "food";
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red ,shape: StadiumBorder(),), 
      
      onPressed: (){}, child:Text(title,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontWeight: FontWeight.bold ),));
      
}
}