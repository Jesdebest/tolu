

import 'package:flutter/material.dart';


class sheetlearn extends StatefulWidget {
  const sheetlearn({super.key});

  @override
  State<sheetlearn> createState() => _sheetlearnState();
}

class _sheetlearnState extends State<sheetlearn> {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      backgroundColor:_backgroundColor,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(isScrollControlled: true,shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20) ))  ,backgroundColor: Colors.white,context: context, builder: (context){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                
                Stack(
                  children: [
                    Divider(color: Colors.black45,

                    thickness: 3,
                    indent: MediaQuery.of(context).size.width * 0.45,
                    endIndent: MediaQuery.of(context).size.width * 0.45,
                    ),
                    Positioned(
                      right: 0,
                      height: 10,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.alarm_on),color: Colors.brown ,))
                  ],
                ),


                Text("aa"),
                Placeholder(),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                  setState(() {
                    _backgroundColor = Colors.green;
                  });
                }, child: Text("ok"))
              ],
            ),
          );
        });
      }, child: Icon(Icons.add))
      ,
    );
  }
}