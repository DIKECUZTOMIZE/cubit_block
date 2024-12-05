

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_providerAndCubit.dart';

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [


          /// List Provider:
          Center(child: ElevatedButton(onPressed: (){
            context.read<ListCubitandProvider>().addData();
          }, child: Text('Add')),)



          /// List :Cubit
          // Center(child: ElevatedButton(onPressed: (){
          //
          //   context.read<ListCubitandProvider>().addNotes(eachData:{
          //     'name' : 'sanjit',
          //     'desc'  : '60919976'
          //   });
          // }, child: Text('Add')))


          /// Duta flortingButoon lobo nuare
          // Center(
          //   child: FloatingActionButton(onPressed: (){
          //     BlocProvider.of<CounterCubitAadProvider>(context,listen: false).incrementCount();
          //   }, child: Text('+')),
          // ),

          // FloatingActionButton(onPressed: (){
          //   context.read<CounterCubitAadProvider>().decrementCount();
          // },child: Text('-'),)

        ],
      )
    );
  }
}