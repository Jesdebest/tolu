
import 'package:flutter/material.dart';


class mycellotindemos extends StatefulWidget {
  const mycellotindemos({super.key});

  @override
  State<mycellotindemos> createState() => _mycellotindemosState();
}

class _mycellotindemosState extends State<mycellotindemos> {
  
  late List<Mycellotindemos> _items;

  @override
  void initState() {
  _items = [
    Mycellotindemos(imagepath: "https://cdn-icons-png.flaticon.com/512/87/87390.png" , Title: 'Absratrt art', price: 3.4, ),
    Mycellotindemos(imagepath: "https://cdn-icons-png.flaticon.com/512/87/87390.png" , Title: 'Absratrt art2', price: 3.4, ),
    Mycellotindemos(imagepath: "https://cdn-icons-png.flaticon.com/512/87/87390.png" , Title: 'Absratrt art3', price: 3.4, ),



  ];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: _items.length,

        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: _newcard(model: _items[index]),
        );
        
    
    
      },),
    );
  }
}

class _newcard extends StatelessWidget {
  const _newcard({
    super.key,
    required Mycellotindemos model,
  }) : _model = model;

  final Mycellotindemos _model;

  @override
  Widget build(BuildContext context) {
    return Card(child: SizedBox(height: 300,child: 
    Padding(
      padding: _paddingnormal().Paddingtop ,
      child: Column(
        children: [
          Expanded(child: Image.network(_model.imagepath)),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Padding(
              padding: _paddingnormal().paddingbottom ,
              child: Text(_model.Title),
            ),Text("${_model.price} eth")
    
          ],)
        ],
      ),
    )),);
  }
} 


class Mycellotindemos {
  final String imagepath;
  final String Title;
  final double price;
  Mycellotindemos({
    required this.imagepath,
    required this.Title,
    required this.price,
  });
}


class _paddingnormal{

  final Paddingtop = const EdgeInsets.only(top: 10);
  final paddingbottom = const EdgeInsets.all(8.0);

}