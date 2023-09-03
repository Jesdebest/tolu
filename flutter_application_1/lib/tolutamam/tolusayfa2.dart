import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/tolu/tolu_contanier_deneme.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa1.dart';
import 'package:flutter_application_1/tolutamam/tolu_sayfa3.dart';
import 'package:flutter_application_1/tolutamam/tolu_sayfa4.dart';

import 'denemetolu.dart';

class tolusayfa2 extends StatefulWidget {
  const tolusayfa2({super.key});

  @override
  State<tolusayfa2> createState() => _tolusayfa2State();
}

class _tolusayfa2State extends State<tolusayfa2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body: 

      GridView.count(crossAxisCount: 3,children: [
        SizedBox(),
        denemetolusayfa(),
        SizedBox(),
        TolunayContanier2()._modelcontanir,
        TolunayContanier2()._modelcontanir2,
        TolunayContanier2()._modelcontanir3,
        TolunayContanier2()._modelcontanir4,
        TolunayContanier2()._modelcontanir5,
        TolunayContanier2()._modelcontanir6,
        TolunayContanier2()._modelcontanir7,
        TolunayContanier2()._modelcontanir8,
        TolunayContanier2()._modelcontanir9,
        TolunayContanier2()._modelcontanir10,
        TolunayContanier2()._modelcontanir11,
        TolunayContanier2()._modelcontanir12,

       
      ],),


    );
  }
}


   
class TolunayContanier2 {

  final _modelcontanir = SafeArea(

    
    child: Padding(  
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,
  
      child: ElevatedButton(
      onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("Bengidiyom.mp3"));

      
      }, 
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        
      ),
      child: Text("Ben Gidiyom",) ),),
    ),
  );
  

  final _modelcontanir2 = SafeArea(

    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))

        ),
        onPressed: (){
        final player = AudioPlayer();

        player.play(AssetSource("noeltten.mp3"));

        

      }, child: Text("Noel tten")),),
    ),
  );


  final _modelcontanir3 = SafeArea(

    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("lanbunesgulkene.mp3"));

        

      }, child: Text("Lan bune sg ülkene")),),
    ),
  );


  final _modelcontanir4 = SafeArea(

    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("sexy.mp3"));

        

      }, child: Text("Sexy")),),
    ),
  );

  final _modelcontanir5 = SafeArea(

    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("kufur.mp3"));

      }, child: Text("Küfür")),),
    ),
  );

    final _modelcontanir6 = SafeArea(

    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))

        ),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("atmayinartik.mp3"));

      }, child: Text("Atmayın Artık Orospu Çocukları")),),
    ),
  );

  final _modelcontanir7 = SafeArea(

    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))

        )
        ,
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("analarinin.mp3"));

      }, child: Text("Analarının amına sok")),),
    ),
  );

   final _modelcontanir8 = SafeArea(

    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))) 
        ,
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("BurnumAnana.mp3"));

      }, child: Text("Burnum Anana Girsin")),),
    ),
  );

  final _modelcontanir9 = SafeArea(

    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("Nebekliyonuzgardaş.mp3"));

      }, child: Text("Ne Bekliyonuz Gardaş")),),
    ),
  );

  final _modelcontanir10 = SafeArea(

    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: 
        ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("SeniAmcikSeni.mp3"));

      }, child: Text("Seni amcık senii")),),
    ),
  );

  final _modelcontanir11 = SafeArea(

    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))

        ),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("siksenmisabaham,.mp3"));

      }, child: Text("Siksenmi sabahamı bıraksan")),),
    ),
  );

  final _modelcontanir12 = SafeArea(

    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("Anasinibile.mp3"));

      }, child: Text("Anasını bile sikerim")),),
    ),
  );




}


