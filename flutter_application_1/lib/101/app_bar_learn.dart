import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class app_bar_learn extends StatelessWidget {
  const app_bar_learn({super.key});
final String _title = "welcome221";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text(_title),
      leading: Icon(Icons.chevron_left),
      backgroundColor: Colors.transparent ,
      systemOverlayStyle: SystemUiOverlayStyle.light,

      centerTitle: true,
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.mark_email_read_outlined)
      ),
      
    

    ],


    ),);
  
  }
}