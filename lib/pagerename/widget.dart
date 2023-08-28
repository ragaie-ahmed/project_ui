import 'package:flutter/material.dart';
import 'package:project_ui/pagerename/presentation.dart/model.dart';
import 'package:project_ui/pagerename/presentation.dart/new.dart';

class mylist extends StatelessWidget {
   mylist({super.key,required this.Models});
model Models;
  @override
  Widget build(BuildContext context) {
return Card(
      child: ListTile(
        leading: Container(
          width: 50,height: 50,
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage( Models.image!))
          ),
        ),
        title: Text(Models.name!,),
        subtitle: Text(Models.phonenumber!),
        trailing: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return news(models: Models);
          }  ));
        }, icon: Icon(Icons.arrow_forward)),
      ),
    );  
    }

}