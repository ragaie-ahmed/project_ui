import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:project_ui/cachehelper/cachehelper.dart';
import 'package:project_ui/component/blocobserve.dart';
import 'package:project_ui/constants.dart';
import 'package:project_ui/home/presentation/Screen/homebody.dart';
import 'package:project_ui/home/presentation/Screen/homepage.dart';
import 'package:project_ui/news/cubit/cubit.dart';
import 'package:project_ui/news/news.dart';
import 'package:project_ui/page1/presentation/Screen/Widget/bottom.dart';
import 'package:project_ui/pagerename/presentation.dart/page.dart';
import 'package:project_ui/pagerename/widget.dart';
import 'package:project_ui/shopapp/Screens/auth/register.dart';
import 'package:project_ui/shopapp/Screens/auth/sigin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:project_ui/shopapp/Screens/homeScreen.dart';
import 'package:project_ui/shopapp/data/layout/layoutcubit.dart';

void main()async{

WidgetsFlutterBinding.ensureInitialized();
Bloc.observer = MyBlocObserver();
  await cachehelper.cacheinit();
  token=cachehelper.getdata(key: "token");
print("the toke is : $token");
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider (
      providers: [
        BlocProvider(create:(context) => cubitnews()..getnewsapp()),
        BlocProvider(create:(context) => cubitlayout()..getsetting(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:token !=null && token!=""?homelayout(): Signin(),
      ),
    );
  }
}