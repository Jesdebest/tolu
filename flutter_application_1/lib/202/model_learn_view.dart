import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/model_learn.dart';


class modellearnview extends StatefulWidget {
  const modellearnview({super.key});

  @override
  State<modellearnview> createState() => _modellearnviewState();
}

class _modellearnviewState extends State<modellearnview> {
  @override
  var user9 = Postmodel8(body: "aa");
  void initState() {
    final user1 = PostModel1();
    user1.ID = 1;

    //final yazmadıgımız için allta çagırabiliyoruz
    final user2 = PostModel2(1, 2, "aa", "bb");
    user2.Title = "aa";

    // postmodel3 final verdigimiz için güncelleme yapamıyoruz
    final user3 = PostModel3(1, 2, "bb", "cc");
    
    // postmodel4 final verdigimiz için güncelleme yapamıyoruz
    //locate kendin yapıyorsan en iyisi budur
    final user4 =  PostModel4(Userid: 1, ID: 1, Title: "aa", body: "bb");
    

    // başına alt çizgi koydugumuz için nokta koyunca hiçbirşey gözükmüyor (private)

    final user5 = PostModel5(Userid: 1, id: 1, title: "aa", body: "bb");
    

    final user6 = Postmodel6(Userid: 1, ID: 2, Title: "aa", body: "bb");


    final user7 = Postmodel7();


    //serviceden data geliyorsa en iyisi bu 
    final user8 = Postmodel8();
    

    
    super.initState();
  }


  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        
        setState(() {
          user9 = user9.copyWith(title: "vb");

        });  

        
      }),
      appBar: AppBar(
      title: Text(user9.title ?? "not has any data  "),

    ),);
  }
}