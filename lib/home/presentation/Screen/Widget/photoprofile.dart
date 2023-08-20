import 'package:flutter/material.dart';
import 'package:project_ui/component/custometext.dart';

class photoprofile extends StatelessWidget {
  const photoprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*.2,
          height: MediaQuery.of(context).size.height*.1,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/mohamed.png")),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            custometext(
              text: "Welcom back",
              fontSize: 15,
              color: Colors.grey,
            ),
            SizedBox(height: 10,),
            custometext(
              text: "John Sortino!",
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            )
          ],
        ),
      ],
    );
  }
}
