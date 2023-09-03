import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/list_view_build.dart';
import 'package:flutter_application_1/202/form_learn_view.dart';
import 'package:flutter_application_1/202/model_learn.dart';

class demos extends StatefulWidget {
  const demos({super.key});

  @override
  State<demos> createState() => _demosState();

  
}


class _demosState extends State<demos> {
  @override


  final List<TolunayModel> users = UserItems().users;

  final player = AudioPlayer();

  

  Widget build(BuildContext context) {
    
    return  Scaffold(body: Padding(
      padding:  EdgeInsets.only(top: 125),
      
      child: GridView.count(crossAxisCount: 3,children: [
      
    tolumodel(kufurisimleri: Text("siz salaksiniz"), kufurvideolari: "deneme1.mp3")._modelcontanir

    

    ,ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
         
         ListTile(
          

          title: Text(users[index].Kufurisimleri),
        
          


         );
        
      },
    ),


      ],),
    ),);
  }
}



class tolumodel {


  final _modelcontanir = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,color: Colors.white,child: ElevatedButton(onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("deneme1.mp3"));

        

      }, child: Text("aa")),),
    ),
  );






  final Text kufurisimleri;
  final String kufurvideolari;
  tolumodel({
    required this.kufurisimleri,
    required this.kufurvideolari,
  });

  

}


 final _normalcontanier = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,color: Colors.white,child: ElevatedButton(onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("deneme1.mp3"));
  
      }, child: Text("aa")),),
    ),
  );


class _Contanire{

  final _modelcontanir = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,color: Colors.white,child: ElevatedButton(onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("deneme1.mp3"));
  
      }, child: Text("siz malsiniz")),),
    ),
  );

}







class TolunayModel {
  
  final String Kufurisimleri;
  final String VideoName;
  TolunayModel({
    required this.Kufurisimleri,
    required this.VideoName,
  });
}

class UserItems {

  late final List<TolunayModel> users;
  UserItems(){
    users= [

      TolunayModel(Kufurisimleri: "siz malsiniz", VideoName: "deneme1.mp3"),
      TolunayModel(Kufurisimleri: "anani", VideoName: "deneme2.mp3"),
      TolunayModel(Kufurisimleri: "Atacagin Topu", VideoName: "deneme3.mp3")
      
      
      

    ];
  }
  
}