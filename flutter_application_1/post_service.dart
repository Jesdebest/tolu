

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/202/service/Post_Model.dart';

class PostService {

  late final Dio _networkmanger;
  
  PostService() : _networkmanger = Dio(BaseOptions(baseUrl:"https://jsonplaceholder.typicode.com/" ));

  
    Future<bool> editemtoservice(PostModel) async {
  final response =  await _networkmanger.post("posts",data: PostModel());

  return response.statusCode == HttpStatus.created;
  }



Future<List<PostModel>?> fetchpostitems() async {
   final responce = await Dio().get("https://jsonplaceholder.typicode.com/posts");
    
   
   
   if (responce.statusCode == HttpStatus.ok) {
    final _datas = responce.data;

    if (_datas is List) {
      return _datas.map((e) => PostModel.fromJson(e)).toList();
      
    }else{
      return null;
    }
     
   }
   
  }








}