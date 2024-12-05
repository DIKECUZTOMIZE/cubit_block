

/// Step:2.
import 'package:cubit_block/cubite_list/local_state/list_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ListPage extends StatelessWidget{


 ///  Step 6.Globale List of Maf:

  List<Map<String,dynamic>> mNotes=[];
  @override
  Widget build(BuildContext context) {

    /// Step .7 : Watch logic :state
    /// Var type use nokrakoi direct use ,Motes
    /// State tr pora data pua jabo aru state jatia jatia update hoi thakibo tatia
    /// New state data pua jabo,aru initialy blank dekha jabo data,
    /// data change hole new state  pai thakibo
    mNotes = context.watch<ListCubit>().state.mData;
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),

      /// Step 8. Ui Reflection
      body: ListView.builder(

        itemCount: mNotes.length,
        itemBuilder: (context, index) =>ListTile(
          title:Text(mNotes[index]['title']) ,
          subtitle:Text(mNotes[index]['desc']) ,
        ) ,),

      /// Step 5.Add context
      floatingActionButton:FloatingActionButton(onPressed: (){
        context.read<ListCubit>().addMap({
          'title': 'Sanjit',
          'desc' : '9678844anjit'
        });
      },child: Text('Add'),) ,
    );
  }
}