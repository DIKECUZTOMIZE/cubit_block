
import 'package:cubit_block/cubite_compear/page1.dart';
import 'package:cubit_block/cubite_compear/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(

      /// Provider
      //ChangeNotifierProvider(create: (context) => CounterProvider(),child: App()));

     ///  Cubite
      BlocProvider(create: (context) =>  CounterCubitProvider(),child: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:
          /// Normal
          Page1(),

          /// Cubit:
          //   BlocProvider(create: (context) => CounterCubitProvider(),child: Page1()),

          ///  Provoder:
          // ChangeNotifierProvider(
          //     create: (context) => CounterProvider(), child: Page1()),


    );
  }
}
