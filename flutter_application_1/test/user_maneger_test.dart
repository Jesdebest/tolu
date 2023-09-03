import 'package:flutter_application_1/202/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  setUp((){});

  test("Sample Test", (){

    final users = [GenericUser("vb","11",10),GenericUser("vbx","22",11),GenericUser("vbx10","33",12)];


   final response =  genericlearn(AdminUser("vbadmin", "1", 15, 1)).calculatormanager(users);
    
    genericlearn(AdminUser( "vbadmin", "1", 15, 1)).shownames<String>(users);


    expect(response, 33);
  });
}