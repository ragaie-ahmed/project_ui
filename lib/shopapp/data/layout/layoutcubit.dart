import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:project_ui/shopapp/data/layout/layoutstate.dart';
import 'package:http/http.dart' as http;
import 'package:project_ui/shopapp/data/layout/model.dart';

class cubitlayout extends Cubit<layoutstate>{
  cubitlayout():super(initlayoutstate());
List<layoutmodel> layoutlis=[];
  void getsetting() async{
    emit(loadinglayoutstate());

    http.Response response =await http.get(Uri.parse("https://student.valuxapps.com/api/home"));
   
    if(response.statusCode==200){
      layoutlis.clear();
       var responsebody= jsonDecode(response.body);
       if (responsebody["status"]==true) {
         for(var item in responsebody["data"]["products"]){
          layoutlis.add(layoutmodel.fromjson(json: item));
         }
         emit(successlayoutstate());
       }else{
        emit(failedlayoutstate(error:  responsebody["message"]));
       }
    }

  }
}