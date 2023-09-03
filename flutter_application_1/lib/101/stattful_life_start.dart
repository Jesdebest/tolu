import 'package:flutter/material.dart';


class statulllifecyle extends StatefulWidget {
  const statulllifecyle({super.key, required this.massage});
  final String massage;
  @override
  State<statulllifecyle> createState() => _statulllifecyleState();
}

class _statulllifecyleState extends State<statulllifecyle> {
  String _massege = "";
  late final bool _isodd;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _massege = widget.massage;
    _isodd = widget.massage.length.isOdd;

    tekmiciftmi();



  }

  void tekmiciftmi() {
       if (_isodd) {
      _massege += "çift";
      
    }else{
      _massege += "tek";
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    title: Text(_massege)

    
     ),
     body: _isodd? TextButton(onPressed: (){}, child: Text(_massege)) : ElevatedButton(onPressed: (){}, child: Text(_massege)),
     
     );
  }
}