import 'package:flutter/material.dart';
import 'package:project_ui/page1/presentation/Screen/page.dart';

class bottombar extends StatelessWidget {
  const bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.home_filled),
        Icon(Icons.search),
       GestureDetector(
        onTap:() {
          
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return page();
          }));
        },
         child: Container(
          width: MediaQuery.of(context).size.width*.15,
          height: MediaQuery.of(context).size.height*0.06,
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
         child:  Icon(Icons.app_blocking_outlined),
         ),
       ),
        Icon(Icons.macro_off),
        Icon(Icons.person),
      ],
    );
  }
}
