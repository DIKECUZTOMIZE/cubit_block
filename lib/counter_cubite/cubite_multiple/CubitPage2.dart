import 'package:cubit_block/counter_cubite/cubite_multiple/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitPage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Page 2'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        Center(
          child: FloatingActionButton(

             onPressed: (){
               // BlocProvider.of<CounterCubit>(context,listen: false).incrementCount();
               context.read<CounterCubit>().incrementCount();
             },child: Text('Add'),),
        ),

         SizedBox(
           height: 11,
         ),

        Center(
          child: FloatingActionButton(

             onPressed: (){
               // BlocProvider.of<CounterCubit>(context,listen: false).incrementCount();
               context.read<CounterCubit>().decremnetCount();


             },child: Text('Add'),),
        ),
        ],
      ),
    );
  }
}