import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/icon_learn.dart';
import 'package:flutter_application_1/101/image_learn.dart';

class tabbaradvance extends StatefulWidget {
  const tabbaradvance({super.key});

  @override
  State<tabbaradvance> createState() => _tabbarlearnState();
}

class _tabbarlearnState extends State<tabbaradvance> with TickerProviderStateMixin {
  @override
  late final TabController _tabController;


  @override
  void initState() {
    _tabController =  TabController(length: _Mytabviwes.values.length, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return  DefaultTabController(length: _Mytabviwes.values.length, child: Scaffold(
      appBar: _Apppbarr(),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
      _tabController.animateTo(0);

      }),
      
      bottomNavigationBar: _bottomappbar(),
      body: _Tabbarview(),


    ));
  }

  AppBar _Apppbarr() {
    return AppBar(
      
      

    );
  }

  BottomAppBar _bottomappbar() {
    return BottomAppBar(
    notchMargin: 10,
    shape:CircularNotchedRectangle(), 
    child: 
    
    TabBar(
    controller: _tabController ,
    tabs: _Mytabviwes.values.map((e) => Tab(text: "${e.name}")).toList())
    
    ,);
  }

  TabBarView _Tabbarview() {
    return TabBarView(
      physics: NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
      
      imageLearn(),iconLearn(),imageLearn(),imageLearn()


    ]);
  }
}

enum _Mytabviwes{
  home,
  setting,
  profile,
  favorite,
}

extension _Mytabviwesextension on _Mytabviwes{
  
}

