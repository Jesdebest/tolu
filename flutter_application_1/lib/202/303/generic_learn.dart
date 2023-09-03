//sadece admin girebilsin diye T atadık
//generic sınırlandırmaya yarar ve atadıgın şeyde sınırlanır
//bir classta sınırlandırmak için kullanılır ve sınırlandırınca onun özelliklerini alır

import 'package:flutter_application_1/tolutamam/denemetolu.dart';

class genericlearn<T extends AdminUser>  {
  
  final T admin;

  genericlearn(this.admin);

  int calculatormanager(List<GenericUser> users) {
      
      int sum = 0;
      for (var user in users) {
      sum += user.money;

      }

      int initaluevalue =admin.role == 1 ? admin.money : 0;


      //burdaki generic summoneyi int çevirdi

      final summoney = users.map((e) => e.money).fold<int>(0, (previousValue, element) => previousValue+element );

      final responsee = users.fold<int>(0, (previousValue, element) => previousValue + element.money);
      return responsee;
      return sum;
    }

    Iterable<VBmodel<R>>? shownames<R>(List<GenericUser> users ) {

      if (R == String) {
        final names = users.map((e) => VBmodel<R>(e.name.split("").toList().cast<R>()));
        return names;
      }
      return null;

    }

  }

  class VBmodel<T> {
    final String name = "vb";
    final List<T> items;

  VBmodel(this.items);

  }



  void sayname(GenericUser user) {
    print(user.name);}



  

class GenericUser {
  final String name;
  final String Id;
  final int money;

  GenericUser(this.name, this.Id, this.money);
}

class AdminUser extends GenericUser {
  final int role;
  AdminUser(super.name, super.Id, super.money, this.role);
  


}