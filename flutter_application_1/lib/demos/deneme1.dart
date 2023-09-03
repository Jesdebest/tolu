import 'package:flutter/material.dart';

class deneme1 extends StatelessWidget {
  const deneme1({super.key});
  final yazi1 ="Create your first note";
  final descrpition = "add a not";
  final createnote = "Create a not";
  final buttontext1 = "import notes";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body:         
      Padding(
        padding: newpadding.newpading1,
        

        child: Column(children: [
          
        Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Books_with_Apple_Flat_Icon_Vector.svg/1024px-Books_with_Apple_Flat_Icon_Vector.svg.png"),
        TitleWidget(yazi1: yazi1),
        
        Padding(
          padding:  newpadding.newpading2 ,
          child: yazielign(Title: descrpition),
        ),



        ElevatedButton(onPressed: (){}, child: Center(child: SizedBox(child: Text(createnote,style: Theme.of(context).textTheme.headlineLarge,),height: buttonsized.buttonsizednormal, )),),


        TextButton(onPressed: (){}, child: Text(buttontext1))


        ],),
      ),
    );
  }
}

class yazielign extends StatelessWidget {
  const yazielign({
    super.key,
    this.textAlign = TextAlign.center, required this.Title
  });
  final TextAlign textAlign;
  final String Title;
  @override
  Widget build(BuildContext context) {
    return Text(textAlign: textAlign,
    Title *5,style:Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black,fontWeight: FontWeight.w400,
    
    
        ));
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.yazi1,
  });

  final String yazi1;

  @override
  Widget build(BuildContext context) {
    return Text(yazi1,style:Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black,fontWeight: FontWeight.w800) );
  }
}

class newpadding {
  static const EdgeInsets newpading1 = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets newpading2 = EdgeInsets.symmetric(vertical: 20,horizontal: 20);
}


class buttonsized{

  static const double buttonsizednormal = 50;


}