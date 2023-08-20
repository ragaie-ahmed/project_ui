import 'package:flutter/material.dart';
import 'package:project_ui/presentation/component/customebutton.dart';
import 'package:project_ui/presentation/component/custometext.dart';

class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            custometext(
              text: "Shelf it's all about you read.",
              color: Colors.black,
              fontSize: 15,
            ),
            custometext(
              text: " Try and enjoy.",
              color: Colors.black,
              fontSize: 15,
            ),
          ],
        ),
        customebutton(
          containercolor: Colors.orange,
          width: MediaQuery.of(context).size.width * .25,
          height: MediaQuery.of(context).size.height*.04,
          start: "Smart Picker",
          icon: Icons.settings,
        )
      ],
    );
  }
}
