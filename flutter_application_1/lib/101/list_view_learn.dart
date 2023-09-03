import 'package:flutter/material.dart';


class listviewlearn extends StatefulWidget {
  const listviewlearn({super.key});

  @override
  State<listviewlearn> createState() => _listviewlearnState();
}

class _listviewlearnState extends State<listviewlearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(),
    body: 
    ListView(
      children: [Text("Merhaba",style: Theme.of(context).textTheme.headlineLarge,),
      Container(height: 300,color: Colors.red,),
      Container(height: 300,color: Colors.blue,),
      IconButton(onPressed: (){}, icon: Icon(Icons.call_end_outlined))
      
      ],
      
    ) ,);
  }
}