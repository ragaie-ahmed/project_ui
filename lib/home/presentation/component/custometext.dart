import 'package:flutter/material.dart';

class custometext extends StatelessWidget {
   custometext({super.key,required this.text,this.color,this.fontWeight,this.fontSize});
String text;
Color ?color;
FontWeight ? fontWeight;
double ?fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}