
import 'package:cubit_block/cubite_list/local_state/list_cubit.dart';
import 'package:cubit_block/cubite_list/local_state/list_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Step:1.
void main(){
  runApp(ListApp());
}

class ListApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(

       ///  Step 5. Injection:
       home: BlocProvider(create:(context) => ListCubit() ,child: ListPage()),
     );
  }
}