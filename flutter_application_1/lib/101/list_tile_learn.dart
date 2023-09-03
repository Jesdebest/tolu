import 'package:flutter/material.dart';


class listtileLearn extends StatelessWidget {
  const listtileLearn({super.key});
  final Imageurl = "https://picsum.photos/200/300";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),body: 
    tekrarlanancard(Imageurl: Imageurl)
    
    
    ,);
  }
}

class tekrarlanancard extends StatelessWidget {
  const tekrarlanancard({
    super.key,
    required this.Imageurl,
  });

  final String Imageurl;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
        child: ListTile(title: Image.network(Imageurl),
        subtitle: Text("how use to card"),
        onTap: () { 
        },
        leading: Icon(Icons.money),
        trailing: Icon(Icons.chevron_right),
         ),
      )




    ],);
  }
}