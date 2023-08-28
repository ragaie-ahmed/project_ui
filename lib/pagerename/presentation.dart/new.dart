import 'package:flutter/material.dart';
import 'package:project_ui/pagerename/presentation.dart/model.dart';

class news extends StatelessWidget {
   news({super.key,required this.models});
  model models;

  @override
  Widget build(BuildContext context) {
    return Text(models.name!);
  }
}