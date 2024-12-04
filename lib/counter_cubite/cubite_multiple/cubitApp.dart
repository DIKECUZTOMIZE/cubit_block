import 'package:cubit_block/counter_cubite/cubite_multiple/CubitPage1.dart';
import 'package:cubit_block/counter_cubite/cubite_multiple/counter_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Block r a Bhag hoi cubite
/// Single Page Hande
/// Packeg=flutter_bloc: ^8.1.6

void main (){

  runApp(BlocProvider(create: (context) => CounterCubit(),child: CubitApp()));
}

/// step :3 Injection dependency:
class CubitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: CubitePage1(),
      
      // home: BlocProvider(create: (context) => CounterCubit(),child: CubitePage1()),
    );
  }
}