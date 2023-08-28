import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_ui/news/model.dart';

class navi extends StatelessWidget {
   navi({super.key,required this.models});
modelnews models;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_downward_outlined))
        ],
      ),
      body: Container(
        child: 
        Text(models.content!),
      ),
    );
  }
}