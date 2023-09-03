
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/demos/service_put_demos.dart';

class putservice {

  late final Dio _networkmanger;

  putservice() : _networkmanger = Dio(BaseOptions(baseUrl:"https://jsonplaceholder.typicode.com/" ));
  

  Future<bool> puttoservice(PutModel) async {

    final response = await _networkmanger.put("puts",data: PutModel());

    return response.statusCode == HttpStatus.ok;
   }

Future<List<PutModel>?> fetchputitems()

  async{ final response = await Dio().get("https://jsonplaceholder.typicode.com/posts/1");

  if (response.statusCode == HttpStatus.ok) {
    final _datas = response.data;
    if (_datas is List) {

     return _datas.map((e) => PutModel.fromJson(e)).toList();
      
    }else{
      return null;
    }
    
  }




  }

}