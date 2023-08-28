
import 'package:shared_preferences/shared_preferences.dart';
class cachehelper{
  static late SharedPreferences ?sharedPreferences;
  static cacheinit() async{
    sharedPreferences= await SharedPreferences.getInstance();
  }
  static Future<bool> Setdat({required String key,required dynamic value})async{
    return await sharedPreferences!.setString(key, value);
  }
   static String getdata({required String key}){
    return sharedPreferences!.getString(key)??"";
  }
  static Future<bool> deletedata({required String key})async{
  return await sharedPreferences!.remove(key);
  }
  
}