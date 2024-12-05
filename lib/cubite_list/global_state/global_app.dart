import 'package:cubit_block/cubite_list/global_state/globale_cubit.dart';
import 'package:cubit_block/cubite_list/global_state/globale_page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(BlocProvider(create: (context) => GlobaleCubit(),child: GlobaleApp()));
}

class GlobaleApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: GlobalPage1(),
    );
  }
}