import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class sharedlearn extends StatefulWidget {
  const sharedlearn({super.key});

  @override
  State<sharedlearn> createState() => _sharedlearnState();
}

class _sharedlearnState extends changeloading<sharedlearn> {
  @override

  int _cuurentvalue = 0;


 


  void _onchange(String value) {

    final _value = int.tryParse(value);

    if (_value != null) {
      setState(() {
        _cuurentvalue = _value;
      });
    }
    
  }


  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: Text(_cuurentvalue.toString(),),actions: [

     isloading ? Center(child: CircularProgressIndicator(color: Theme.of(context).scaffoldBackgroundColor )) : SizedBox()

    ],),
    
    floatingActionButton: FloatingActionButton(child: Icon(Icons.save_outlined),onPressed: (
    ) async {
      isloadingchech();
      // final SharedPreferences prefs = await SharedPreferences.getInstance();
      // await prefs.setInt("counter", _cuurentvalue);
      isloadingchech();

    })
    ,body: 
  
    TextField(

      onChanged: (value) {
        _onchange(value);
      },

    )
    
    ,);
  }
}


abstract class changeloading<T extends  StatefulWidget> extends State<T> {
   bool isloading = false;

  void isloadingchech() {
    setState(() {
      isloading = !isloading;
    });
    
  }


}