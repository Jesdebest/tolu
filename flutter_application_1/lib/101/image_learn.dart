import 'package:flutter/material.dart';


class imageLearn extends StatelessWidget {
  const imageLearn({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),body:
    Column(children: [

      Text("aaa"),
      Image.network("https://www.apple.com/v/apple-books/b/images/meta/og.png",errorBuilder: (context, error, stackTrace) => Text("resim bozuldu"),)


    ],) ,);
  }
}