

import 'package:flutter/material.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa1.dart';


class alertlearn extends StatefulWidget {
  const alertlearn({super.key});

  @override
  State<alertlearn> createState() => _alertlearnState();
}

class _alertlearnState extends State<alertlearn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),
    floatingActionButton: FloatingActionButton(onPressed: (){
      // showAboutDialog(context: context, children: [
      //   Text("aaa"),
      //   Text("bbb"),
      //   Text("bbb"),
      // ]);

      showDialog(
        barrierDismissible:  false,
        context: context, builder: (context) {
       
       //Dialog,AboutDialog
       return _alertdialog();
      });



    })  
    ,body: 
    Text("aa")
    ,);
  }
}

class _alertdialog extends StatelessWidget {
  const _alertdialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _Imagezoom();
  
  }
}

class _versionupdate {

static const version = "New Update";

}



// sınıf alertdialog oldugu için onu extends ettik
class updatedialog extends AlertDialog {
   updatedialog({Key? key , required BuildContext context }) : super(key: key,

    title: Text(_versionupdate.version)  ,
     actions: [
       ElevatedButton(onPressed: (){
       
       }, child: Text("Update")),
     TextButton(onPressed: (){
       Navigator.pop(context);
     }, child: Text("Close", style: TextStyle(color: Colors.amber),))
     ],
  
  );
 
}



class _Imagezoom extends StatelessWidget {
  const _Imagezoom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: SizedBox(
        height: 400,

        child: InteractiveViewer(
          
          child: Image.network("https://picsum.photos/200/300", fit: BoxFit.cover,))),
    );
  
  }
}
