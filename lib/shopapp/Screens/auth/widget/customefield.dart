import 'package:flutter/material.dart';

class custometextfield extends StatelessWidget {
   custometextfield({super.key,
   this.colorborderside,
   required this.iconData,
   required this.labelText,
   this.color,this.fontSize,
   this.fontWeight,
   required this.textEditingController,
   required this.value,required this.obscureText, this.onTap});
   bool ?obscureText;
IconData ?iconData;
String labelText;
Color?color;
FontWeight ?fontWeight;
double ?fontSize;
Function()? onTap;
Color? colorborderside;
TextEditingController textEditingController;
String value;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:textEditingController ,
      validator: (value) {
        if(value!.isEmpty){
        return  "please enter the $value";   
        }
   },
      obscureText: obscureText!,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: color,
          fontSize:fontSize ,
          fontWeight: fontWeight,
          
        ),
        suffixIcon: GestureDetector(onTap:onTap ,child: Icon(iconData)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: const Color.fromARGB(255, 58, 102, 97)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color:colorborderside?? Colors.blue),
          )),
    );
  }
}
