import 'package:flutter/material.dart';


class textfieldlearn extends StatefulWidget {
  const textfieldlearn({super.key});

  @override
  State<textfieldlearn> createState() => _textfieldlearnState();
}

class _textfieldlearnState extends State<textfieldlearn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),body: 

    TextField(
      inputFormatters: [],
      autofillHints: [AutofillHints.addressCity],
      keyboardType: TextInputType.emailAddress,
      maxLength: 20,
      decoration: InputDecoration(prefixIcon: Icon(Icons.mail_rounded),border: OutlineInputBorder(),labelText: ("mail"))
    )
    ,);
  }
}