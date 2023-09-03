import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/303/service/ServiceModel.dart';
import 'package:flutter_application_1/202/303/service/project_dio.dart';
import 'package:flutter_application_1/202/303/service/req_res_view.dart';
import 'package:flutter_application_1/202/303/service/reqrest_Service.dart';
import 'package:flutter_application_1/202/cache/shared_learn.dart';

abstract class Reqresviewmodel extends changeloading<reqresview> with ProjectDioService {

  late final Ireqrestservice reqresservice;
  List<Data> resource = [];
  @override
  void initState() { 
    // TODO: implement initState
    super.initState();
    reqresservice = ReqresService(dio: Service);
   
  }

  Future<void> fetch() async {
  isloadingchech();
    resource = (await reqresservice.fetchResourceItem() )?.data ?? [];
  }



}
  
