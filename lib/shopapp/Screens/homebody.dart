import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_ui/shopapp/Screens/description.dart';
import 'package:project_ui/shopapp/data/layout/model.dart';

class homebody extends StatelessWidget {
   homebody({super.key,required this.model});
layoutmodel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return description(model: model,);
        }));
      },
      child: Card(
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(model.image!))
              ),
            ),
            Text("${model.oldprice}")
          ],
        ),
      ),
    );
  }
}