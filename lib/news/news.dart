import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_ui/news/cubit/cubit.dart';
import 'package:project_ui/news/cubit/newsbody.dart';
import 'package:project_ui/news/cubit/state.dart';

class newsapp extends StatelessWidget {
  const newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=BlocProvider.of<cubitnews>(context);
    return Scaffold(
      
      appBar: AppBar(),
      body:BlocConsumer<cubitnews,newsapi> (listener: (context, state) {
        
      },
      builder: (context, state) {
        return ListView.separated(separatorBuilder: (context, index) {
          return SizedBox(height: 20,);
        },itemCount: cubit.news.length,itemBuilder: (context,index){
      return newsbody(model: cubit.news[index]);
        });
        
      },)
    );
  }
}