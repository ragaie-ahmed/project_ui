import 'package:flutter/material.dart';

class containerpage extends StatelessWidget {
  const containerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .7,
          height: MediaQuery.of(context).size.height * .44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: const [
                const Color.fromRGBO(255, 255, 255, 1),
                Color.fromARGB(255, 226, 246, 249),
              ])),
        ),
         Image.asset(
"assets/images/OIP (2).jpg",        fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width * .5,
        height: MediaQuery.of(context).size.height * .3,
      ),
      ],
    );
  }
}
