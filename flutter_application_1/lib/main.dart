import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/%C4%B1ndicartor_learn.dart';
import 'package:flutter_application_1/101/app_bar_learn.dart';
import 'package:flutter_application_1/101/button_learn.dart';
import 'package:flutter_application_1/101/card_learn.dart';
import 'package:flutter_application_1/101/colum_ro_learn.dart';
import 'package:flutter_application_1/101/conteriner_size_learn.dart';
import 'package:flutter_application_1/101/custom_widget.dart';
import 'package:flutter_application_1/101/page_viwe_learn.dart';
import 'package:flutter_application_1/101/stattful_life_start.dart';
import 'package:flutter_application_1/202/303/service/req_res_view.dart';
import 'package:flutter_application_1/202/303/tabbar_advance.dart';
import 'package:flutter_application_1/202/theme/ligth_theme.dart';
import 'package:flutter_application_1/demos/calor_demos_viiw.dart';
import 'package:flutter_application_1/demos/deneme1.dart';
import 'package:flutter_application_1/101/icon_learn.dart';
import 'package:flutter_application_1/101/image_learn.dart';
import 'package:flutter_application_1/101/list_tile_learn.dart';
import 'package:flutter_application_1/101/padding_learn.dart';
import 'package:flutter_application_1/101/scofflof_learn.dart';
import 'package:flutter_application_1/101/stackLearn.dart';
import 'package:flutter_application_1/101/stateless_learn.dart';
import 'package:flutter_application_1/101/text_learn.dart';
import 'package:flutter_application_1/demos/stack_demos.dart';
import 'package:flutter_application_1/tolu/denemeshare.dart';
import 'package:flutter_application_1/tolutamam/denemetolu.dart';
import 'package:flutter_application_1/tolu/tolu_contanier_deneme.dart';
import 'package:flutter_application_1/tolu/tolu_sayfa_button.dart';
import 'package:flutter_application_1/tolu/tolu_share_deneme.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa2.dart';
import 'package:flutter_application_1/tolu/tolu_demos.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa1.dart';

import '101/list_view_build.dart';
import '101/list_view_learn.dart';
import '101/navigat_detail_learn.dart';
import '101/navigaton_learn.dart';
import '101/statful_learn.dart';
import '101/text_field_learn.dart';
import '202/303/part/call_back_learn.dart';
import '202/303/part/part_learn.dart';
import '202/alert_learn.dart';
import '202/animed_learn.dart';
import '202/cache/shared_learn.dart';
import '202/cache/shared_manager.dart';
import '202/form_learn_view.dart';
import '202/model_learn_view.dart';
import '202/package_learn.dart';
import '202/service/service_learn.dart';
import '202/service/service_post_learn_view.dart';
import '202/sheet_learn.dart';
import '202/tabber_learn.dart';
import '202/theme/theme_learn.dart';
import 'core/oop_learn.dart';
import 'core/oop_learn_view.dart';
import 'demos/Color_life_cyle.dart';
import 'demos/mycellotion_demos.dart';
import 'demos/password_demos_textfield.dart';
import 'tolu/denemeshare.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: Ligththeme().tema,

      
      
      
      // ThemeData.dark().copyWith(
      
      //   tabBarTheme:
      //   TabBarTheme(
      //   labelColor: Colors.white,
      //   unselectedLabelColor: Colors.red,
      //   indicatorSize: TabBarIndicatorSize.label,

      //   ),
      //   progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white) ,
      //   appBarTheme: const AppBarTheme(

      //     backgroundColor: Colors.red,
      //     systemOverlayStyle: SystemUiOverlayStyle.light

      //   )


      // ),

      
      home:  ToluDeneme2(),
      

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.money});

  

  final String title;
  final int money;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
        actions: [
          Text(widget.money.toString()),
        ],
        
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'kaç kere götten:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
