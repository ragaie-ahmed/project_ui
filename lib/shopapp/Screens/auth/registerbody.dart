import 'package:flutter/material.dart';
import 'package:project_ui/component/custometext.dart';
import 'package:project_ui/home/presentation/Screen/homebody.dart';
import 'package:project_ui/home/presentation/Screen/homepage.dart';
import 'package:project_ui/page1/presentation/Screen/Widget/bottom.dart';
import 'package:project_ui/page1/presentation/Screen/page.dart';
import 'package:project_ui/shopapp/Screens/auth/sigin.dart';
import 'package:project_ui/shopapp/Screens/auth/signinbody.dart';
import 'package:project_ui/shopapp/Screens/auth/widget/customeMaterialbutton.dart';
import 'package:project_ui/shopapp/Screens/auth/widget/customefield.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_ui/shopapp/data/Auth/cubit/authstate.dart';
import 'package:project_ui/shopapp/data/Auth/cubit/registercubit.dart';

class registerbody extends StatelessWidget {
  registerbody({super.key});
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontrller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool isobscerue=true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => authcubit(),
      child: BlocConsumer<authcubit, authstate>(
        listener: (context, state) {
          if (state is successregisterstate) {
            Navigator.push(context, MaterialPageRoute(builder:(context) {
              return page();
            },));
          }
      else    if (state is failderegisterstate) {
          showDialog(context: context, builder:(context) {
            return AlertDialog(
              title: Text(state.errormessage),
            );
          },);
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        custometext(
                          text: "Sign Up",
                          color: const Color.fromARGB(
                            255,
                            81,
                            124,
                            120,
                          ),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        custometextfield(
                          labelText: "name",
                          textEditingController: namecontroller,
                          value: "name",
                          iconData: Icons.person,
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        custometextfield(
                          labelText: "phone",
                          textEditingController: phonecontrller,
                          value: "phone",
                          iconData: Icons.phone,
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        custometextfield(
                          labelText: "email",
                          textEditingController: emailcontroller,
                          value: "email",
                          iconData: Icons.email,
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        custometextfield(
                          labelText: "password",
                          textEditingController: passwordcontroller,
                          value: "password",
                          iconData: Icons.lock,
                          onTap: (){
                            // BlocProvider.of<authcubit>(context).onChange(isobscerue);
                          },
                          obscureText: isobscerue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        customebuttom(
                          width: double.infinity,
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              BlocProvider.of<authcubit>(context).register(
                                  name: namecontroller.text,
                                  phonenumber: phonecontrller.text,
                                  email: emailcontroller.text,
                                  password: passwordcontroller.text);
                                  
                            }
                          },
                          text:state is loadingregisterstate? "loading ":"Register",
                          fontSize: 25,
                          color: Colors.white,
                        ),
                    // Spacer(),
                     Row(
                      children: [
                        custometext(text: "have an account....",color: Colors.teal,fontSize: 20,),
                        SizedBox(width: 10,),
                        customebuttom(width: MediaQuery.of(context).size.width*.4,text: " Sign In", onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Signin();
                          }));
                        })

 
 
 
                       ],
                     ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
