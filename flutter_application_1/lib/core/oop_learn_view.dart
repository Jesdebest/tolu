import 'package:flutter/material.dart';



class textfileddemos extends StatefulWidget {
  const textfileddemos({super.key});

  @override
  State<textfileddemos> createState() => _textfileddemosState();
}

class _textfileddemosState extends State<textfileddemos> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextField(autofillHints: [AutofillHints.addressCity],
            
            keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration(prefixIcon: Icon(Icons.mail_rounded),border: OutlineInputBorder(),labelText: ("mail"))),
          ),
          TextField(),
        ],
      ),
    );
  }
}