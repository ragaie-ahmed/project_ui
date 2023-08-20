import 'package:flutter/material.dart';
import 'package:project_ui/home/presentation/component/custometext.dart';

class appbar extends StatelessWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        custometext(text: "SHELF",fontSize: 20,fontWeight: FontWeight.bold,),
        Icon(Icons.menu),
      ],
    );
  }
}