import 'package:flutter/material.dart';
import 'package:project_ui/home/presentation/Screen/Widget/appbar.dart';
import 'package:project_ui/home/presentation/Screen/Widget/bottombar.dart';
import 'package:project_ui/home/presentation/Screen/Widget/card.dart';
import 'package:project_ui/home/presentation/Screen/Widget/containerprofile.dart';
import 'package:project_ui/home/presentation/Screen/Widget/details.dart';
import 'package:project_ui/home/presentation/Screen/Widget/photoprofile.dart';
import 'package:project_ui/component/custometext.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 193, 190, 190),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 226, 246, 249),
              borderRadius: BorderRadius.circular(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  child: appbar(
                      Icon1: Icons.menu,
                      text: "My Profile",
                      Icon2: Icons.notifications),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 30),
                  child: photoprofile(),
                ),
                SizedBox(
                  height:80
                ),
                details(),
                SizedBox(
                  height: 20
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: containerprofile(),
                ),
                SizedBox(
                  height:20
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: custometext(
                        text: "Continue Reading",
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 30
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: card(
                      image: "assets/images/R.jpg",
                      Text1: "the",
                      text2: "Goldfinch",
                      text3: "Donna tartt",
                      text4: "60%",
                      image2: "assets/images/imagep.png"),
                ),
                SizedBox(
                  height: 30
                ),
                Divider(),
                SizedBox(
                  height:30
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: card(
                      image: "assets/images/R.jpg",
                      Text1: "the",
                      text2: "Goldfinch",
                      text3: "Donna tartt",
                      text4: "60%",
                      image2: "assets/images/imagep.png"),
                ),
                SizedBox(
                  height: 20
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: bottombar(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
