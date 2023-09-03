import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/card_learn.dart';
import 'package:flutter_application_1/101/navigaton_learn.dart';
import 'package:flutter_application_1/tolu/selectable_menuitems.dart';
import 'package:flutter_application_1/tolutamam/tolu_sayfa4.dart';
import 'package:flutter_application_1/tolu/tolu_sayfa_button.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa2.dart';
import 'package:flutter_application_1/tolu/tolu_model.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_application_1/tolutamam/tolu_sayfa3.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:share_plus/share_plus.dart';
import 'denemetolu.dart';

import 'package:icons_plus/icons_plus.dart';

class ToluDeneme2 extends StatefulWidget {
  const ToluDeneme2({super.key});

  @override
  State<ToluDeneme2> createState() => _ToluDeneme2State();

}

final button1 = TolunayModel(Kufurisimleri: "siz malsiniz", VideoName: "deneme1.mp3");


class _ToluDeneme2State extends State<ToluDeneme2> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      
  
    body:  

    GridView.count(crossAxisCount: 3,children: [
    Padding(
      padding: const EdgeInsets.only(),
      child: SizedBox( 
      
      child:  
      Text("@furkanisleyen64 @B.babaygt" , style: TextStyle(color: Colors.amber)  )
      
      // )
      )
    ),
    denemetolusayfa(),
    SizedBox(),
    TolunayContanier()._modelcontanir,
    TolunayContanier()._modelcontanir2,
    TolunayContanier()._modelcontanir3,
    TolunayContanier()._modelcontanir4,
    TolunayContanier()._modelcontanir5,
    TolunayContanier()._modelcontanir6,
    TolunayContanier()._modelcontanir7,
    TolunayContanier()._modelcontanir8,
    TolunayContanier()._modelcontanir9,
    TolunayContanier()._modelcontanir10,
    TolunayContanier()._modelcontanir11,
    TolunayContanier()._modelcontanir12,
      ],
      


      ),
      
      // persistentFooterButtons: [
      //   OutlinedButton(onPressed: (){
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => tolusayfa2()));
      //   }, child: Text("sayfa 2 "))
      // ],

      
      
    
    
    // floatingActionButton: FloatingActionButton.extended(onPressed: (){
    // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => tolusayfa2()),(route) => false);
    // }, label: Text("2.sayfa"),
    // foregroundColor: Colors.cyanAccent,
    // backgroundColor: Colors.indigo,
    // icon: Icon(Icons.chevron_right),
    // )


      );
  }
}



class TolunayContanier  {

  final _modelcontanir = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
          onLongPress: () async{await FlutterShare.shareFile(title: "sizmalsiniz.mp3", filePath: "assets/sizmalsiniz.mp3");
          
        },
        style:
        ElevatedButton.styleFrom(
        shadowColor: Colors.grey[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        ),
        onPressed: (){

        final player = AudioPlayer();

        player.play(AssetSource("sizmalsiniz.mp3"));

      }, child: Text("Siz Malsiniz", )),),
    ),
  );

  final _modelcontanir2 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          
        ),
        onLongPress: () {
          FlutterShare.share(title:"aaa", linkUrl: "assets/sizmalsiniz.mp3");
        },
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("siktirbelaniarama.mp3"));

        
      }, child: Text("Siktir Belani",)),),
    ),
  );

  final _modelcontanir3 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
  
      
        child: Container(width: 100,height: 100,child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.grey[900],
          shape:   
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))

          ),
          
          onLongPress: () {
            
            Share.shareXFiles([XFile("assets/seninaminisikerimhe.mp3")]);
          },
          onPressed: (){
          
          final player = AudioPlayer();
        
          player.play(AssetSource("seninaminisikerimhe.mp3"));
      
        }, child: Text("Senin Amını",)),),
      ),
    );

  final _modelcontanir4 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),

      child: Container(width: 100,height: 100,child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey[900],
           
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: (){
        final player = AudioPlayer();

        player.play(AssetSource("siktirgitordandevam.mp3"));

      }, child: Text("Siktir Git Ordan" , )),),
    ),
  );

  final _modelcontanir5 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
    
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey[900],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          
        ),
        
        onPressed: (){
        final player = AudioPlayer();

        player.play(AssetSource("BuKimAmk.mp3"));



      }, child: Text("Bu Kim Amk", )),),
    ),
  );

  final _modelcontanir6 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        shadowColor: Colors.grey[900],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        
        ),
        onPressed: (){
        final player = AudioPlayer();
        player.play(AssetSource("AmkCocugu.mp3"));


      }, child: Text("Amk Çocuğu" , )),),
    ),
  );

  final _modelcontanir7 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("AtacaginPasin.mp3"));

        

      }, child: Text("Atacagın Pasın", ) ),),
    ),
  );

  final _modelcontanir8 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))

        ),
        onPressed: (){
        final player = AudioPlayer();

        player.play(AssetSource("Cokkufur.mp3"));

        

      }, child: Text("Çok Küfür")),),
    ),
  );

  final _modelcontanir9 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12 ))

        ),
        onPressed: (){
        
        final player = AudioPlayer();
        player.play(AssetSource("siktirgitugrastirma.mp3"));

        

      }, child: Text("Siktir Git")),),
    ),
  );

  final _modelcontanir10 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          shadowColor: Colors.grey[900]
        ),
        onPressed: (){
        final player = AudioPlayer();

        player.play(AssetSource("Adetasizisiktim.mp3"));

        

      }, child: Text("Adeta Sizi Siktim")),),
    ),
  );

  final _modelcontanir11 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: 
            BorderRadius.circular(12)
          )

        ),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("SaldirinLAN.mp3"));

        

      }, child: Text("SaldirinLAN")),),
    ),
  );

  final _modelcontanir12 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width:100,height:100,child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("Kimkimi.mp3"));

        

      }, child: Text("Kim Kimi")),),
    ),
  );

  final _modelcontanir13 = SafeArea(
    
    child: Padding(
      padding:  EdgeInsets.all(5),
      child: Container(width: 100,height: 100,color: Colors.white,child: ElevatedButton(onPressed: (){
        
        final player = AudioPlayer();

        player.play(AssetSource("İrkcilikyapanin.mp3"));

        

      }, child: Text("Irkçılık Yapanın")),),
    ),
  );
}







// class Dropdownbuttoneverypage extends StatelessWidget {
//   const Dropdownbuttoneverypage({
//     super.key,
//   });  

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField(items: [
//       DropdownMenuItem(child: Text("1.sayfa"),value: "1",onTap: () {
//       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => ToluDeneme2()),(route) => false);

//       },),
//       DropdownMenuItem(child: Text("2.sayfa"),value: "2",onTap: 
//       () {Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => tolusayfa2()),(route) => false);
// },),
//       DropdownMenuItem(child: Text("3.sayfa"),value: "3",onTap: () {
//       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => tolusayfa3()),(route) => false);

//       },),
//       DropdownMenuItem(child: Text("4.sayfa"),value: "4",onTap: 
//       (){
//         Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => tolusayfa4()),(route) => false);

//       },),


      
//     ] , onChanged: (v) {
    

//     }, );
//   }
// }


// class Dropdownbuttoneverypage extends StatelessWidget {
//   const Dropdownbuttoneverypage({
//     super.key,
//   });  

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField(items: [
//       DropdownMenuItem(child: Text("1.sayfa"),value: "1",onTap: () {
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => ToluDeneme2()),);

//       },),
//       DropdownMenuItem(child: Text("2.sayfa"),value: "2",onTap: 
//       () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => tolusayfa2()));
// },),
//       DropdownMenuItem(child: Text("3.sayfa"),value: "3",onTap: () {
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => tolusayfa3()));

//       },),
//       DropdownMenuItem(child: Text("4.sayfa"),value: "4",onTap: 
//       (){
//         Navigator.of(context).push(MaterialPageRoute(builder: (context) => tolusayfa4()));

//       },),


      
//     ] , onChanged: (value) {
      
//      }, );
// }}


// class Dropdownbuttoneverypage extends StatelessWidget {
//   const Dropdownbuttoneverypage({
//     super.key,
//   });  

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField(items: [
//       DropdownMenuItem(child: Text("1.sayfa"),value: "1",onTap: () {
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => ToluDeneme2()),);

//       },),
//       DropdownMenuItem(child: Text("2.sayfa"),value: "2",onTap: 
//       () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => tolusayfa2()),);
// },),
//       DropdownMenuItem(child: Text("3.sayfa"),value: "3",onTap: () {
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => tolusayfa3()),);

//       },),
//       DropdownMenuItem(child: Text("4.sayfa"),value: "4",onTap: 
//       (){
        
        
//       },),


      
//     ] , onChanged: (v) {

//     }, );
//   }
// }
//, onChanged: (String? value) { },