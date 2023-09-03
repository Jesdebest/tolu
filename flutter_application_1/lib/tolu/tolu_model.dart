import 'package:flutter_application_1/tolutamam/tolusayfa1.dart';

class TolunayModel extends TolunayContanier {
  
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