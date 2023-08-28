import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_ui/shopapp/data/layout/model.dart';

class description extends StatelessWidget {
   description({required this.model,super.key});
layoutmodel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(

image: DecorationImage(image: NetworkImage(model.image!)),              borderRadius: BorderRadius.circular(20)
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(model.description!),
        ],
      ),
    );
  }
}