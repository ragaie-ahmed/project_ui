import 'package:flutter/material.dart';
import 'package:project_ui/component/custometext.dart';
import 'package:project_ui/page1/presentation/Screen/page.dart';
import 'package:project_ui/shopapp/Screens/auth/register.dart';
import 'package:project_ui/shopapp/Screens/auth/widget/customeMaterialbutton.dart';
import 'package:project_ui/shopapp/Screens/auth/widget/customefield.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_ui/shopapp/Screens/homeScreen.dart';
import 'package:project_ui/shopapp/data/Auth/cubit/authstate.dart';
import 'package:project_ui/shopapp/data/Auth/cubit/registercubit.dart';

class signinbody extends StatelessWidget {
  signinbody({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formkeys = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocProvider  (
      create: (context) => authcubit(),
      child: BlocConsumer<authcubit,authstate>(
     listener: (context, state) {
       if (state is successloginstate) {
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return homelayout();
         }));
       }
         else    if (state is faildeloginstate) {
          showDialog(context: context, builder:(context) {
            return AlertDialog(
              title: Text(state.errormessage),
            );
          },);
          }
     }, 
     
     builder: (context, state) {
       return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  color: Color.fromARGB(255, 43, 167, 153)),
              child: Form(
                  key: formkeys,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      custometext(
                        text: "Sign In",
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      custometextfield(
                        iconData: Icons.email,
                        labelText: "email",
                        textEditingController: emailcontroller,
                        value: "email",
                        obscureText: false,
                        color: Colors.white,
                        colorborderside: Colors.white,
                        fontSize: 20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      custometextfield(
                        iconData: Icons.password,
                        labelText: "password",
                        textEditingController: passwordcontroller,
                        value: "password",
                        obscureText: true,
                        color: Colors.white,
                        colorborderside: Colors.white,
                        fontSize: 20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      customebuttom(
                        width: double.infinity,
                        text:state is loadingloginstate ? " loading....":"Sign in",
                        onPressed: () {
                       if (formkeys.currentState!.validate()) {
                            BlocProvider.of<authcubit>(context).signin(email: emailcontroller.text, password: passwordcontroller.text);
                       }
                        },
                        colorconntainer: Colors.white,
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          custometext(text: " don't have an account..",fontSize: 20,),
                          SizedBox(width: 10,),
          customebuttom(width: MediaQuery.of(context).size.width*.4,text: "Register",fontSize: 25 ,fontWeight: FontWeight.bold,onPressed:  (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
        return registerScreen();
        }));
          })                    ],
                      )
                    ],
                  )),
            ),
          ),
        );
     
     },),
    );
  }
}
