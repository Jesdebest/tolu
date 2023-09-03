// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class passworddemos extends StatefulWidget {
  const passworddemos({
    Key? key,
     this.controller,
  }) : super(key: key);

final TextEditingController? controller;


  @override
  State<passworddemos> createState() => _passworddemosState();
}




class _passworddemosState extends State<passworddemos> {
  @override

  bool _issecure = false;

  void _isvisibilty() {
    setState(() {
      _issecure = !_issecure;
    });
  }

  Widget build(BuildContext context) {
    return TextField(controller: 
    widget.controller
    
    
    ,decoration: 
    
    InputDecoration(border: UnderlineInputBorder(),hintText: "plase password",suffix: IconButton(onPressed: (){
      _isvisibilty();


    }, icon: Icon( _issecure ? Icons.visibility: Icons.visibility_off)) ),
    keyboardType: TextInputType.visiblePassword,
    obscureText: _issecure
    
    ,);
  }
}