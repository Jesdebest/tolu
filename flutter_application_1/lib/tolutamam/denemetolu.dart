import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/tolutamam/tolu_sayfa3.dart';
import 'package:flutter_application_1/tolutamam/tolu_sayfa4.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa1.dart';
import 'package:flutter_application_1/tolutamam/tolusayfa2.dart';

class denemetolusayfa extends StatefulWidget {
  const denemetolusayfa({super.key});

  @override
  State<denemetolusayfa> createState() => _denemetolusayfaState();
}

final List<String> items = [
  '1.sayfa',
  '2.sayfa',
  '3.sayfa',
  "yakında"
];



String? selectedValue;


class _denemetolusayfaState extends State<denemetolusayfa> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Center(
      child: DropdownButtonHideUnderline(
        
        child: DropdownButton2<String>(
          
          isExpanded: true,

          hint: Text(
            'Sayfa Seçiniz', 
            
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue,
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(

                    value: item,
                    child: Text(
                      item,
                      style:  TextStyle(
                        color: const Color.fromARGB(255, 68, 141, 201),
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
              
          value: selectedValue,
          // dropdownStyleData: DropdownStyleData(decoration: BoxDecoration(color: Colors.amber)),
          onChanged: (String? value) {
          
          if (value == '1.sayfa') {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ToluDeneme2()));
          }
          else if (value == '2.sayfa'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => tolusayfa2()));
          }
          else if(value == '3.sayfa'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => tolusayfa3()));
          }
          


            (() {
             setState(() {
               selectedValue = value;
             }); 
            });
          },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            width: 140,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    ),
  );
}
  

final List<String> items = [
  '1.sayfa',
  '2.sayfa',
  '3.sayfa',
  "yakında"
];
}
