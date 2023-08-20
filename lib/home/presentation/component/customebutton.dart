import 'package:flutter/material.dart';
import 'package:project_ui/home/presentation/component/custometext.dart';

class customebutton extends StatelessWidget {
  customebutton(
      {super.key,
      required this.containercolor,
      this.width,
      this.height,
      this.icon,
      required this.start});
  Color? containercolor;
  double? width;
  double? height;
String ?start; IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: containercolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Row(
            children: [
              Icon(icon,color: Colors.white,size: 12,),
              SizedBox(
                width: 2,
              ),
        Text("$start",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),          ],
          ),
        ),
      ),
    );
  }
}
