import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/303/service/req_req_view_model.dart';


class reqresview extends StatefulWidget {
  const reqresview({super.key});

  @override
  State<reqresview> createState() => _reqresviewState();
}

class _reqresviewState extends Reqresviewmodel {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: isloading ?  CircularProgressIndicator() : null),
    body: ListView.builder(
      
      itemCount: resource.length,
      itemBuilder: (BuildContext context, int index) {
        inspect(resource[index]);
        return  Text(resource[index].color ?? "" , style: TextStyle(color: Colors.white),);
      },
    ),
    

    
    );
  }
}