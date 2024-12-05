 import 'package:cubit_block/counter_cubite/cubite_multiple/counter_cubit.dart';
import 'package:cubit_block/cubite_list/global_state/globale_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalePage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Page2'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: ElevatedButton(onPressed: (){

            context.read<GlobaleCubit>().addNotes({
              'title'  : 'sanjit keleng',
              'desc'  : '9678844797'
            });
          }, child: Text('Add')))

        ],
      ),
    );
  }
}