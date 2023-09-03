import 'package:flutter/material.dart';


class stackdemos extends StatelessWidget {
  const stackdemos({super.key});

  final image1 = "https://picsum.photos/200/300";


  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),body: 
    Column(

      children: [

        Expanded(flex: 4,child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(child:Image.network("https://picsum.photos/200/300"),bottom: 25,),
            Positioned(height: 50,width: 200,bottom: 0, child: Card(

              color: Colors.white,
              shape: RoundedRectangleBorder(),
            ), ),
            Icon(Icons.fork_left_rounded)
            

          ],
        ),
        ),
        Spacer(flex: 4,),


      ],

    )
    
    ,);

      

    
  }
}