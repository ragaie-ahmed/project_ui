import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_ui/shopapp/Screens/homebody.dart';
import 'package:project_ui/shopapp/data/layout/layoutcubit.dart';
import 'package:project_ui/shopapp/data/layout/layoutstate.dart';

class homelayout extends StatelessWidget {
  const homelayout({super.key});

  @override
  Widget build(BuildContext context) {
    var cubits = BlocProvider.of<cubitlayout>(context);
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<cubitlayout, layoutstate>(
        listener: (context, state) {
          if (state is failedlayoutstate) {
            CircularProgressIndicator();
          } else if (state is failedlayoutstate) {
            showBottomSheet(
              context: context,
              builder: (context) {
                return ListTile(
                  title: Text("error"),
                  subtitle: Text(state.error),
                );
              },
            );
          }
        },
        builder: (context, state) {
          var cubits = BlocProvider.of<cubitlayout>(context);
          return
             SingleChildScrollView(
               child: Column(
                children: [
                  Text("hello"),
                  SizedBox(height: 30,),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount:cubits.layoutlis.length,
                    itemBuilder: (context, index) {
                      return homebody(model: cubits.layoutlis[index]);
                    },
                  ),
                ],
            ),
             );

        },
      ),
    );
  }
}
