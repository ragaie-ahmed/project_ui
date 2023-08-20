import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  String ?text;
  IconData? Icon1,Icon2;
  appbar({required this.Icon1, required this.text,required this.Icon2});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icon1),
          Text(text!,style: TextStyle(color: Colors.black,fontSize: 20,),),
          Icon(Icon2),
        ],
      ),
    );
  }
}