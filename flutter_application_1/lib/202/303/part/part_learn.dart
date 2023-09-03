import 'package:flutter/material.dart';
part 'part_appbar.dart';


//private class ile normal classı kullanırkan part kullanılır 

class partlearn extends StatefulWidget {
  const partlearn({super.key});

  @override
  State<partlearn> createState() => _partlearnState();
}

class _partlearnState extends State<partlearn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: _appbarbutton(),
    );
  }
}

