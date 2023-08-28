

import 'package:flutter/material.dart';
import 'package:project_ui/pagerename/presentation.dart/model.dart';
import 'package:project_ui/pagerename/widget.dart';

class homepages extends StatefulWidget {
   homepages({super.key});

  @override
  State<homepages> createState() => _homepagesState();
}

class _homepagesState extends State<homepages> {
  List<model> data = [
    model("mnman", "assets/images/R.jpg","1203"),
    model("mnman", "assets/images/R.jpg","1203"),
    model("shady", "assets/images/R.jpg","1203"),
    model("abas", "assets/images/R.jpg","1203"),
    model("gamal", "assets/images/R.jpg","1203"),
    model("gamil", "assets/images/R.jpg","1203"),
    model("abas", "assets/images/R.jpg","1203") ,
  ];
  @override
  

  Widget build(BuildContext context) {
    return ListView.builder(itemCount: data.length,itemBuilder: (context,index){
   return mylist(Models: data[index],);
    });
  }
}
