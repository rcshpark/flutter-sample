class  TestModel {
  
  int id = 0;
  String title = '';
  String body = '';

  TestModel ({ id, title, body});

  TestModel . fromJson ( Map < String , dynamic > json){
      this .id = json[ 'id' ];
      this .title = json[ 'title' ];
      this .body = json[ 'body' ];
  }

  Map < String , dynamic >  toJson (){
    final  Map < String , dynamic > data =  new  Map < String , dynamic > ();
    data[ 'name' ] =  this .title;
    data[ 'body' ] =  this .body;
    return data;
  }
}