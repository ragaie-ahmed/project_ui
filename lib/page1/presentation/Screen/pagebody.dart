import 'package:flutter/material.dart';
import 'package:project_ui/page1/presentation/Screen/Widget/Appbar.dart';
import 'package:project_ui/page1/presentation/Screen/Widget/bottom.dart';
import 'package:project_ui/page1/presentation/Screen/Widget/container.dart';
import 'package:project_ui/page1/presentation/Screen/Widget/textcolumn.dart';

class pagebody extends StatelessWidget {
  const pagebody({super.key});

  @override
  Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
            backgroundColor: Color.fromARGB(255, 188, 214, 227),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: width,
          height: height,
          decoration:  BoxDecoration(
      
               color: Color.fromARGB(255, 226, 246, 249),
                borderRadius: BorderRadius.circular(20)),
                child: Column(
            children: [
              SizedBox(
                height: height*.04,
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: appbar(),
                
              ),
          SizedBox(height: height*.04,),
          containerpage(),
          
          columntext(),
          SizedBox(
            height: height*.04,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: sign(),
          ),

            ],
          )
          ),
      ),
        
     
    );
  }
}