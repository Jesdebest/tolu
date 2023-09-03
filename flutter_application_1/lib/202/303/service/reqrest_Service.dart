import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/202/303/service/ServiceModel.dart';

abstract class Ireqrestservice{
  Ireqrestservice({required this.dio});
  final Dio dio;

  Future<ResorceModel?> fetchResourceItem();


}

enum _reqrespath{
  resource
}



class ReqresService extends Ireqrestservice {
  ReqresService({required super.dio});

  @override
  Future<ResorceModel?> fetchResourceItem() async {
    final response = await Dio().get("/${_reqrespath.resource.name  }");

    if (response.statusCode == HttpStatus.ok) {
      final jsonbody = response.data;

      if (jsonbody is Map<String,dynamic>) {
        return ResorceModel.fromJson(jsonbody);
      }

    }
   return null;
  }

}