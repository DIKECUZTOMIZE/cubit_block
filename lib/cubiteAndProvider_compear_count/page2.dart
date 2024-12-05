
import 'package:cubit_block/cubiteAndProvider_compear_count/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       appBar: AppBar(
         title: Text('Page2'),
       ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: ElevatedButton(onPressed: (){

            /// Provider:
          //  context.read<CounterProvider>().incremnetCount();

            /// cubit:
            context.read<CounterCubitProvider>().incremnetCount();

          }, child: Text('+'))),


          SizedBox(
            height: 11,
          ),


          ElevatedButton(onPressed: (){

            /// Provider
          //  context.read<CounterProvider>().decrementCount();

           ///   Cubit
            context.read<CounterCubitProvider>().decrementCount();
          }, child: Text('-')),
        ],
      ),
    );

  }
}