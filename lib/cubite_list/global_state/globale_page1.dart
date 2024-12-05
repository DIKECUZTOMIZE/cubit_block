 
import 'package:cubit_block/cubite_list/global_state/global_page2.dart';
import 'package:cubit_block/cubite_list/global_state/globale_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalPage1 extends StatelessWidget{

// List<Map<String,dynamic>> mData=[];
  @override
  Widget build(BuildContext context) {
  
var   mData = context.watch<GlobaleCubit>().state.mData;
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Globale Page 1'),
      ),
      
      body: ListView.builder(
        itemCount: mData.length,
        itemBuilder: (context, index) => ListTile(
          title:Text(mData[index]['title']) ,
          subtitle:Text(mData[index]['desc']) ,
          trailing: 
          SizedBox(
            width: 120,
            child: Row(
              children: [
                IconButton(onPressed: (){
                  context.read<GlobaleCubit>().update(Index: index, updateIndex: {
                    'title': 'putu keleng',
                    'desc'  : '9101212177'
                  });
                }, icon: Icon(Icons.edit)),

                SizedBox(
                  width: 11,
                ),
                IconButton(onPressed: (){

                  /// deletIndex aru aite thoka mapr index lgt match kora hoise
                  context.read<GlobaleCubit>().delet(deletIndex: index);
                }, icon: Icon(Icons.delete)),
              ],
            ),
          ),
        ),),


     floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => GlobalePage2(),));
      }, child:Text('next'))
    );
  }
}