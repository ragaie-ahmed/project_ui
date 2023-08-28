import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:project_ui/news/cubit/state.dart';
import 'package:http/http.dart'as http;
import 'package:project_ui/news/model.dart';

class cubitnews extends Cubit<newsapi>{
  cubitnews():super(initnews());
  List<modelnews> news=[];
  void getnewsapp()async{
    emit(loadingnews());
    news.clear();
    http.Response response=await http.get(Uri.parse("https://newsapi.org/v2/everything?q=sports&apiKey=fc24945c11654cc2984eb0a24df9e536"));
    
    if (response.statusCode==200) 
    {
      var responsebody=jsonDecode(response.body);
for(var item in responsebody["articles"]){
  news.add(modelnews.fromjson(json: item));
}
    emit(sucessnews());  
    }
    else{
      emit(failednews());
    }

  }
  
}