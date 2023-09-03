import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';



class packageLearn extends StatefulWidget {
  const packageLearn({super.key});

  @override
  State<packageLearn> createState() => _packageLearnState();
}

class _packageLearnState extends State<packageLearn> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),

    floatingActionButton: FloatingActionButton(
      backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary
      ,onPressed: (){
      launchUrlString("https://www.twitch.tv/");
    
      
    }),  
  
    body:
  
  Column(
    children: [
      Text("aaa",style: Theme.of(context).textTheme.titleMedium,),
      SpinKitThreeBounce(
      color: Colors.black,
      size: 25,
      controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))



      
      
),
    ],
  )
    
    ,);
  }

  Future<void> _launchUrl(String Url) async {

    if (await canLaunchUrl(Uri(path: Url)) ) {
      !await launchUrlString(Url);
    }



  
  }
}
