import 'package:flutter/material.dart';


class carddemos extends StatefulWidget {
  const carddemos({super.key});

  @override
  State<carddemos> createState() => _carddemosState();
}





class _carddemosState extends State<carddemos> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar:AppBar(),body: 

        Row(
          children: [
            // Container(width: 50,height: 50,color: Colors.white, child: Icon(Icons.heart_broken,color: const Color.fromARGB(255, 227, 106, 146),),),
            //SizedBox(width: 50,height: 50,child: ElevatedButton(onPressed: (){}, child : Icon(Icons.heart_broken_rounded),),),
            Container(color: Colors.white,child: IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken),color: const Color.fromARGB(255, 238, 106, 150),)),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(width: 250,height:75,child: ElevatedButton(onPressed: (){}, child: Text("Add To Card",style: Theme.of(context).textTheme.titleMedium),style: ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder())),)),
            ),
          ],
        )
      


    
    );
  }
}