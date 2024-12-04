import 'package:cubit_block/cubite_compear/page2.dart';
import 'package:cubit_block/cubite_compear//provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),

      body: Column(
        children: [

          Center(
            child:
            Text(

              /// cubit:
             //   '${BlocProvider.of<CounterCubitProvider>(context).getData()}'
              //   '${context.watch<CounterCubitProvider>().getData()}'

              /// Provider:
                 //'${context.watch<CounterProvider>().getData()}'

              /// Cubit
                 '${context.watch<CounterCubitProvider>().getData()}'

            ),
          ),

          SizedBox(
            height: 11,
          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),));
          }, child: Text('next'))

          // ElevatedButton(onPressed: (){
          //
          //
          //   /// Cubit:
          // //  BlocProvider.of<CounterCubitProvider>(context,listen: false).incremnetCount();
          //  // context.read<CounterCubitProvider>().incremnetCount();
          //
          //   /// provider:
          //   context.read<CounterProvider>().incremnetCount();
          //
          // }, child: Text('+')),
          //
          // SizedBox(
          //   height: 11,
          // ),
          //
          // ElevatedButton(onPressed: (){
          //
          //   /// Cubit:
          //  // BlocProvider.of<CounterCubitProvider>(context,listen: false).decrementCount();
          //  // context.read<CounterCubitProvider>().decrementCount();
          //
          //
          //   /// provider:
          //   context.read<CounterProvider>().decrementCount();
          //
          // }, child: Text('-'))

        ],
      ),
    );
  }
}