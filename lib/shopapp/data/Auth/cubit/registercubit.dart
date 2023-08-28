import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:project_ui/cachehelper/cachehelper.dart';
import 'package:project_ui/constants.dart';
import 'package:project_ui/shopapp/data/Auth/cubit/authstate.dart';
import 'package:http/http.dart' as http;
class authcubit extends Cubit<authstate>{
authcubit():super(initstate());
void register({
  required String name ,
  required String phonenumber,
  required String email,
  required String password,
})async{try {
  emit(loadingregisterstate());
  http.Response response=await http.post(Uri.parse("https://student.valuxapps.com/api/register"),body: {
    "name":name,
    "phone":phonenumber,
    "email":email,
    "password":password
  });
 var responsebody= jsonDecode(response.body);
 if(responsebody["status"]==true){
  emit(successregisterstate());
 }else{
  emit(failderegisterstate(errormessage: responsebody["message"]));
 }
} catch (e) {
  print("error");
}


}

void signin({required String email, required String password})async{
  emit(loadingloginstate());
  http.Response response=await http.post(Uri.parse("https://student.valuxapps.com/api/login"),body: {
    "email":email,
    "password":password
  });
  var responsebody=jsonDecode(response.body);
  if (responsebody["status"]==true) {
    cachehelper.Setdat(key:"token",value: responsebody["data"]["token"]);
    emit(successloginstate());
  }else{
    emit(faildeloginstate(errormessage: responsebody["message"]));

}
bool obscureText=false;
void changeobsecure(){
obscureText=!obscureText;
emit(isobscerue());
}
}
}