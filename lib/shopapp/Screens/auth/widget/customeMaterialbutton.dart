import 'package:flutter/material.dart';

class customebuttom extends StatelessWidget {
  customebuttom(
      {super.key,
     required this.width,
      required this.text,
      this.color,
      this.fontSize,
      this.fontStyle,
      this.fontWeight,
      required this.onPressed,this.colors,this.colorconntainer});
  String text;
  Color? color;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  double? fontSize;
  Color? colors;
  Function() onPressed;
 Color? colorconntainer;
 double width;
  @override
  Widget build(BuildContext context) {
    return Container(
  width:width ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:  colorconntainer?? Colors.teal
      ),
      child: MaterialButton(
              
              minWidth: double.infinity,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: color ?? Colors.white,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
          ),
        ),
      ),
    );
  }
}
