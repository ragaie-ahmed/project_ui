import 'package:flutter/material.dart';
import 'package:project_ui/home/presentation/Screen/homebody.dart';
import 'package:project_ui/page1/presentation/Screen/page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}