import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_ui/home/presentation/Screen/Widget/card.dart';
import 'package:project_ui/news/cubit/nav.dart';
import 'package:project_ui/news/model.dart';

class newsbody extends StatelessWidget {
   newsbody({super.key,required this.model});
modelnews model;
  @override
  Widget build(BuildContext context) {
 return Container(
  decoration:  BoxDecoration(
    color: const Color.fromARGB(255, 179, 231, 226),
    borderRadius: BorderRadius.circular(20),
  ),
  child: Column(
    children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image:NetworkImage(model.url!??"https://img.ilcdn.fi/zEskZi_XL8G-joriYm-I-yrSI24=/1200x630/top/filters:watermark(assets.ilcdn.fi/ilsome_v2.jpg,25,0,0)/img-s3.ilcdn.fi/4f498432f1d932d0de4fb3c073050ea0f765293c194d6a3648ba77e42acfa633.jpg")),
        ),
      ),
      SizedBox(height: 10,)
      ,Text(model.title!,style: TextStyle(

         overflow: TextOverflow.ellipsis,
         textBaseline: TextBaseline.values.first
      ),),
      SizedBox(height: 10,),
      Text(model.publishat!),
      SizedBox(height: 10,),
      Text(model.description!),
      SizedBox(height: 20,),
      IconButton(onPressed: (
        
      ){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return navi(models: model);
        }));
      }, icon: Icon(Icons.abc_rounded))
    ],
  ),
 );

  }
}