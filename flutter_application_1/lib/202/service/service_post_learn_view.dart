import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/list_view_build.dart';
import 'package:flutter_application_1/202/service/Post_Model.dart';


class servicepostlearn extends StatefulWidget {
  const servicepostlearn({super.key});
  
  
  
  @override
  State<servicepostlearn> createState() => _servicelearnState();
}

late final Dio _networkmanger;


final TextEditingController _titlecontroller = TextEditingController();
final TextEditingController _bodycontroller = TextEditingController();
final TextEditingController _useridcontroller = TextEditingController();


class _servicelearnState extends State<servicepostlearn> {
  @override

  late final Dio _networkmanger;
  final _baseurl = "https://jsonplaceholder.typicode.com/";




  @override
void initState() {
  super.initState();
  _networkmanger = Dio(BaseOptions(baseUrl: _baseurl));
  
 

}

  bool _isloading = true;

  void changeloading() {

    setState(() {
    _isloading = !_isloading;

    });
    
  }

  Future<void> editemtoservice(PostModel) async {
  final response =  await _networkmanger.post("posts",data: PostModel());

  if (response.statusCode == HttpStatus.created) {
    
  }
  changeloading();
  }

  List<PostModel>? _items;

  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      
      actions: [_isloading ? const CircularProgressIndicator.adaptive(): SizedBox.shrink() ],
      

    ),body: 
        Column(children:  [
          TextField(textInputAction: TextInputAction.next,keyboardType: TextInputType.text,controller: _titlecontroller,decoration: InputDecoration(labelText: "title"),),
          TextField(textInputAction: TextInputAction.next,controller: _bodycontroller,decoration: InputDecoration(labelText: "body"),),
          TextField(textInputAction: TextInputAction.next,controller: _useridcontroller,keyboardType: TextInputType.number,decoration: InputDecoration(labelText: "Userid"),),
          
          TextButton(onPressed: _isloading ? null :  (){

            if (_titlecontroller.text.isNotEmpty && _bodycontroller.text.isNotEmpty && _useridcontroller.text.isNotEmpty) {
              final model = PostModel(body: _bodycontroller.text ,title: _titlecontroller.text , userId: int.tryParse(_useridcontroller.text) );
            }

            
          }, child: Text("button"))
        ],)



    
    
    
    ,);
  }

  
  ListView _newlistview() {
    return ListView.builder(
    padding: EdgeInsets.symmetric(horizontal: 10),
    itemCount: _items?.length   ?? 0,
   itemBuilder:
   (context, index) {
    //iki soru işareti data gelmezse  boş göstermeseniye yarar 
    return _cardmethod(index);

  },);
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