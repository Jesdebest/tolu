import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/image_learn.dart';


class animedlearn extends StatefulWidget {
  const animedlearn({super.key});

  @override
  State<animedlearn> createState() => _animedlearnState();
}



class _animedlearnState extends State<animedlearn> with TickerProviderStateMixin {
  @override

   bool _isvisible = true;
   bool _isopensite = true;
  
  // late varsa initstate içinde değişken olarak ataman lazım
  
  late AnimationController controller;


  @override
  void initState() {
    controller = AnimationController(vsync: this);
    super.initState();
  }

  void tovisible() {
    setState(() {
      _isvisible = !_isvisible;
    });
  }
  
  void toopensite() {
    setState(() {
      _isopensite = !_isopensite;
    });
    
  }




  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),
    floatingActionButton: FloatingActionButton(onPressed: (){
      tovisible();
    }),
    body: 
    //  _isvisible ? Placeholder() : null ,
     Column(
       children: [
        AnimatedContainer(duration: _duration.duration,
        height: _isvisible ? 0 : MediaQuery.of(context).size.height,
        width:_isvisible ? 0 : MediaQuery.of(context).size.height ,
        color: Colors.blue[20],
        margin: EdgeInsets.all(5),
        
        
        ),
         _Animedetcrosswidget(isvisible: _isvisible),
         ListTile(title: AnimatedOpacity(
          duration: _duration.duration,
          opacity: _isopensite ? 1 : 0,
          

         child: Text("aaaa")),
         trailing: IconButton(onPressed: (){
          toopensite();

         }, icon: Icon(Icons.add_location)),
         
          
         ),
         AnimatedDefaultTextStyle(child: Text("aa"), style: (_isvisible ? Theme.of(context).textTheme.headlineSmall : Theme.of(context).textTheme.bodySmall) ??  TextStyle() , duration: _duration.duration)
       ],
     )  ,
    );
  }
}

class _Animedetcrosswidget extends StatelessWidget {
  const _Animedetcrosswidget({
    super.key,
    required bool isvisible,
  }) : _isvisible = isvisible;

  final bool _isvisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
     firstChild: Placeholder(),
     secondChild: SizedBox.shrink(),
     crossFadeState: _isvisible ? CrossFadeState.showFirst : CrossFadeState.showSecond ,
     duration: _duration.duration ,

     
    );
    
  }
}


extension buildcontrerextansion on BuildContext{
  TextTheme textfuncions() {
    return Theme.of(this).textTheme;
  }


}


class _duration{

  static const duration =   Duration(seconds: 1);


}