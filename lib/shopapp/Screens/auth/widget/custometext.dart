import 'package:flutter/material.dart';

class custometext extends StatelessWidget {
   custometext({super.key,required this.text, this.fontSize,this.fontStyle,this.fontWeight});
   String ? text;
   double ?fontSize;
   Color ?color;
   FontStyle ?fontStyle;
   FontWeight ?fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
text!,
style:  TextStyle(
  fontSize:fontSize ??20,
  fontWeight: fontWeight??FontWeight.w600,
  color:color??Colors.blue ,
  fontStyle: fontStyle,
),
    );
  }
}
