import 'package:flutter/material.dart';
import 'package:project_ui/home/presentation/component/customebutton.dart';
import 'package:project_ui/home/presentation/component/custometext.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            custometext(
              text: "-40%",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            custometext(
              text: "Only from " r"$10 per month",
              color: Colors.grey,
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width * .25,
          height: MediaQuery.of(context).size.width * .25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(begin: Alignment.bottomLeft,end: Alignment.topLeft,colors: [const Color.fromARGB(255, 209, 175, 123),const Color.fromARGB(255, 249, 183, 84)])),
          child: Center(
              child: custometext(
            text: "Sign in",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
        ),
      ],
    );
  }
}
