// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/303/part/call_back_learn.dart';
import 'package:flutter_application_1/tolutamam/denemetolu.dart';

class Callbackdropdown extends StatefulWidget {
  const Callbackdropdown({
    super.key,
    required this.onUserSelected,
  });

  final void Function(callbackuser user) onUserSelected; 


  @override
  State<Callbackdropdown> createState() => _CallbackdropdownState();
}

class _CallbackdropdownState extends State<Callbackdropdown> {
  callbackuser? _users;

  //Callbackuser? item
  void updateuser(callbackuser? item) {
    
    setState(() {
      _users = item;
    });
    if (_users != null) {
      widget.onUserSelected.call(_users!);
    }

  }

  @override

  Widget build(BuildContext context) {
    return DropdownButton<callbackuser>(
          
          items: callbackuser.dummyuser().map((e){
          return DropdownMenuItem(child: Text(e.name), value: e);
        }).toList() 
        
        ,onChanged: updateuser );
  }
}