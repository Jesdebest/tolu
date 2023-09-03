import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/list_view_build.dart';
import 'package:flutter_application_1/202/service/Post_Model.dart';


class servicelearn extends StatefulWidget {
  const servicelearn({super.key});
  
  
  
  @override
  State<servicelearn> createState() => _servicelearnState();
}

late final Dio _networkmanger;

class _servicelearnState extends State<servicelearn> {
  @override

  late final Dio _networkmanger;
  final _baseurl = "https://jsonplaceholder.typicode.com/";




  @override
void initState() {
  super.initState();
  _networkmanger = Dio(BaseOptions(baseUrl: _baseurl));
  
  fetchpostitems();

}

  bool _isloading = true;

  void changeloading() {

    setState(() {
    _isloading = !_isloading;

    });
    
  }

  Future<void> fetchpostitems() async {
   final responce = await Dio().get("https://jsonplaceholder.typicode.com/posts");
    changeloading();
   
   
   if (responce.statusCode == HttpStatus.ok) {
    final _datas = responce.data;

    if (_datas is List) {
      
      setState(() {
        _items = _datas.map((e) => PostModel.fromJson(e)).toList();
      });
    }
     
   }
   
  }

  Future<void> fetchpostitemsadvance() async {
   final responce = await _networkmanger.get("posts");
    changeloading();
   
   
   if (responce.statusCode == HttpStatus.ok) {
    final _datas = responce.data;
    changeloading();
    if (_datas is List) {
      
      setState(() {
        _items = _datas.map((e) => PostModel.fromJson(e)).toList();
      });
    }
     
   }
   changeloading();
  }










  List<PostModel>? _items;

  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      actions: [_isloading ? const CircularProgressIndicator.adaptive(): SizedBox.shrink() ],

    ),body: 

    
    ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10),
      itemCount: _items?.length   ?? 0,
     itemBuilder:
     (context, index) {
      //iki soru işareti data gelmezse  boş göstermeseniye yarar 
      return _cardmethod(index);

    },)
    
    ,);
  }










  Card _cardmethod(int index) {
    return Card(
      
      margin:  EdgeInsets.only(bottom: 15),
      child: ListTile(
        
        
        title: Text(_items?[index].title ?? "" ),
        subtitle:Text(_items?[index].body ?? "" ) ,
      ),
    );
  }
}