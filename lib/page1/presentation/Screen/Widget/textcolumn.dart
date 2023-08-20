import 'package:flutter/material.dart';
import 'package:project_ui/home/presentation/component/custometext.dart';

class columntext extends StatelessWidget {
  const columntext({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        custometext(text:"A Life time Of",fontSize: 30, fontWeight: FontWeight.w500,),
        custometext(text:"World-Class" ,fontSize: 30,fontWeight: FontWeight.w500,),
        custometext(text:"Adventures" ,fontSize: 30,fontWeight: FontWeight.w500,),
      ],
    );
  }
}