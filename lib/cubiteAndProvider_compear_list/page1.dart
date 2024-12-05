import 'package:cubit_block/cubiteAndProvider_compear_list/counter_providerAndCubit.dart';
import 'package:cubit_block/cubiteAndProvider_compear_list//////page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Page1 extends StatelessWidget {

 List<Map<String,dynamic>> mData=[];
  @override
  Widget build(BuildContext context) {
    // var mData=context.watch<ListCubitandProvider>().state.mData;
    mData=context.watch<ListCubitandProvider>().getNotes();
    return Scaffold(

      appBar: AppBar(
        title: Text('Page1'),
      ),

      body: ListView.builder(

        itemCount: mData.length,
        itemBuilder: (context, index) => ListTile(

        title:Text(mData[index]['name']) ,

        subtitle:Text(mData[index]['desc']) ,

         ///  Update and delet:
          trailing:SizedBox(
            width: 100,
            child: Row(
              children: [

                InkWell(

                  /// Provider List:

                  onTap: (){
                    context.read<ListCubitandProvider>().upDateData(
                        title: 'putu keleng', desc: '9678844797', updateIndex:index);
                  },

                  /// Cubit List
                  // onTap: (){
                  //   context.read<ListCubitandProvider>().updateDate(updateIndex: index,
                  //       updateTitleAndDesc: {
                  //       'name'  : 'Putu keleng',
                  //         'desc' : '9678844797'
                  //       });
                  // },
                  child: Icon(Icons.edit),
                ),

                SizedBox(
                  width: 11,
                ),

                InkWell(

                  /// Provider:
                  onTap: (){
                    context.read<ListCubitandProvider>().deletNote(deletId: index);
                  },

                  /// Cubit list:
                  // onTap: (){
                  //   context.read<ListCubitandProvider>().delet(deletIndex: index);
                  // },
                  child: Icon(Icons.delete,color: Colors.red,),
                ),
              ],
            ),
          ),
      ),),


      /// Global State:
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),));
      },child: Text('next'),),

           ///  Add Button: List local State:
           //  floatingActionButton:FloatingActionButton(onPressed: (){
           //    BlocProvider.of<ListCubitandProvider>(context,listen: false).addNotes(eachData: {
           //
           //      'name'  : 'sanjit keleng',
           //      'desc'  : '9678844'  });
           //       }, child: Text('Add')),


            /// Coount:

            // Text('${context.watch<CounterCubitAadProvider>().state}'),),

            /// Global State Handl:count
          // floatingActionButton: FloatingActionButton(onPressed: (){
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),));
          // }),

      // ),]

    );
  }
}
