import 'package:flutter/material.dart';
import 'package:project_ui/presentation/component/custometext.dart';

class containerprofile extends StatelessWidget {
  const containerprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5,right: 5,bottom: 25,top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
          Column(
            children: [
              custometext(
                text: "928",
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
              custometext(
                text: "Hours",
                fontSize: 13,
                color: Colors.grey,
              ),
            ],
          ),
          Column(
            children: [
              custometext(
                text: "129",
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
              custometext(
                text: "Books",
                fontSize: 13,
                color: Colors.grey,
              ),
            ],
          ),
          Column(
            children: [
              custometext(
                text: "100",
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
              custometext(
                text: "Authors",
                fontSize: 13,
                color: Colors.grey,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
