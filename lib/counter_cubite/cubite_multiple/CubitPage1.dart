
import 'package:cubit_block/counter_cubite/cubite_multiple/CubitPage2.dart';
import 'package:cubit_block/counter_cubite/cubite_multiple/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitePage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Page 1'),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('${context.watch<CounterCubit>().state}'),
          ),

          SizedBox(
            height: 11,
          ),

         Center(
           child: FloatingActionButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => CubitPage2(),));
           },child: Text('next'),),
         )
         //  FloatingActionButton(
         //
         //    onPressed: (){
         //      // BlocProvider.of<CounterCubit>(context,listen: false).incrementCount();
         //      context.read<CounterCubit>().incrementCount();
         //    },child: Text('Add'),),
         //
         //  SizedBox(
         //    height: 11,
         //  ),
         //
         // FloatingActionButton(
         //
         //    onPressed: (){
         //      // BlocProvider.of<CounterCubit>(context,listen: false).incrementCount();
         //      context.read<CounterCubit>().decremnetCount();
         //
         //
         //    },child: Text('Add'),),
        ],
      ),

      /// Single Page Handel kuribor babe Eate use kora hoi jdui multiple widget
      /// handl kuribor babe defferent pagot use kora hoi
      /// Step : 4. Add:Block filse conect with button




    );
  }
}