import 'package:flutter/material.dart';
import 'package:project_ui/component/custometext.dart';

class card extends StatelessWidget {
  card(
      {super.key,
      required this.image,
      required this.Text1,
      required this.text2,
      required this.text3,
      required this.text4,required this.image2});
  String? image,image2;
  String? Text1, text2, text3, text4;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .1,
          height: MediaQuery.of(context).size.height * .12,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  image!,
                ),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            custometext(
              text: Text1!,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            custometext(
              text: text2!,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            SizedBox(
              height: 7,
            ),
            custometext(
              text: text3!,
              color: Colors.grey,
              fontSize: 15,
            )
          ],
        ),
       SizedBox(width: MediaQuery.of(context).size.width*.4,),
        Column(
          children: [custometext(text: text4!,fontSize: 20,),  
          
          Container(
            width: MediaQuery.of(context).size.width*.09,
            height: MediaQuery.of(context).size.height*.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              
              image: DecorationImage(image: AssetImage(image2!))
            ),
          )],
        ),
      ],
    );
  }
}
