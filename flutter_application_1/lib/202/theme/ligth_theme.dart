

import 'package:flutter/material.dart';

class Ligththeme {
  ThemeData tema = ThemeData(
  
  colorScheme: ColorScheme.dark()
  ,floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: renkler()._textwite ),
  
  textTheme: ThemeData.light().textTheme.copyWith(titleMedium: TextStyle(color: Colors.white,fontSize: 15, ),
    ),

  shadowColor: Colors.blue,
  
  
  );
}

class renkler {

  final Color _textwite = const Color.fromARGB(255, 240, 64, 64);
  
}