// ignore_for_file: public_member_api_docs, sort_constructors_first

class PostModel1 {
   int? Userid;
   int? ID;
   String? Title;
   String? body;
}
class PostModel2 {
   int Userid;
   int ID;
   String Title;
   String body;

  PostModel2(this.Userid, this.ID, this.Title, this.body);
}


class PostModel3 {
  final int Userid;
  final int ID;
  final String Title;
  final String body;
  

  PostModel3(this.Userid,this.ID,this.Title,this.body);

}




class PostModel4 {
  final int Userid;
  final int ID;
  final String Title;
  final String body;
  
  PostModel4({
    required this.Userid,
    required this.ID,
    required this.Title,
    required this.body,
  });

  
}


class PostModel5 {
  final int _userid;
  final int _id;
  final String _title;
  final String _body;
  
  
  PostModel5({required int Userid,required int id, required String title, required String body}):
  
  _userid = Userid,
  _id = id,
  _title = title,
  _body = body;
}


class Postmodel6 {

  late final int _userid;
  late final int _id;
  late final String _title;
  late final String  _body ;
  
  Postmodel6({
    required int Userid,
    required int ID,
    required String Title,
    required String body,
  })
  {
    _userid = Userid;
    _id = ID;
    _title = Title;
    _body = body;

  }
  



}






class Postmodel7 {

  late final int _userid;
  late final int _id;
  late final String _title;
  late final String  _body ;
  Postmodel7({
    int userId = 0,
    int id = 0,
    String title = "a",
    String body = "BB",
  })

  {
    _userid = userId;
    _id = id;
    _title =title;
    _body = body;
  }

}


class Postmodel8 {

  final int? userid;
  final int? id;
  final String? title;
  final String?  body ;
  Postmodel8({
    this.userid,
    this.id,
    this.title,
    this.body,
  });
  


  Postmodel8 copyWith({
    int? userid,
    int? id,
    String? title,
    String? body,
  }) {
    return Postmodel8(
      userid: userid ?? this.userid,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body
    );
  }
}
