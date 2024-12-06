import 'package:cubit_block/cubit_modify/////cubit_privider_filse.dart';
import 'package:cubit_block/cubit_modify//cubite_state.dart';
import 'package:cubit_block/cubit_modify//dbHelper.dart';
import 'package:cubit_block/cubit_modify//notemodal.dart';
import 'package:cubit_block/cubit_modify//page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page1 extends StatefulWidget{

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  DbHelper dbHelper = DbHelper.getinstance();


  List<NoteModal> mDataN=[];

  @override
  void initState() {
    super.initState();

    context.read<CubitAndProvider>().getInitialNotes();
  }
  @override
  Widget build(BuildContext context) {


    /// Atia debo nlage judi Modify kurile tolot updateDataAccToState logic dile
    /// karon tate watch dia hoise karone

    /// 5.Normal
    //  mData = context.watch<CubitAndProvider>().state.allNotesState;


    //  mData = context.watch<CubitAndProvider>().getfectsNote();
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),

      /// 4.
      body:updateDataAccToState(),

      //updateDataAccToState(context.watch<CubitAndProvider>().state),

      /// Normal Data Show:
      /*mData.isNotEmpty? ListView.builder(

        itemCount:mData.length ,
        itemBuilder: (context, index) =>ListTile(

          title:Text(mData[index].titleM) ,

          subtitle:Text(mData[index].descM) ,

          trailing:SizedBox(
            width: 70,

            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(
                      isUpdate: true,
                      id2:mData[index].idM,

                      /// Show dekhabor babe kora hoise mane ate judi anekoi
                      /// match kuru indesx r lgt tatia ami next page  old
                      /// likha thoka bur  automaticly show kuribo jene update click krute
                      // title2: mData[index].titleM,
                      // desc2: mData[index].descM,

                    ),));
                  },
                  child: Icon(Icons.edit),
                ),

                SizedBox(
                  width: 11,
                ),

                InkWell(
                  onTap: ()async {
                    bool check  =  context.read<CubitAndProvider>().deletNotes(dIdC:mData[index].idM!);
                    if(check){
                      context.watch<CubitAndProvider>().getInitialNotes();
                      Navigator.pop(context);
                    }
                  },
                  child: Icon(Icons.delete,color: Colors.red,),
                ),
              ],
            ),
          ) ,
        ) ,):Center(child: Text('Not Add Note')),

*/
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),));
      },child: Text('Add'),),
    );
  }

  /// 6.
  Widget updateDataAccToState() {
    return BlocBuilder<CubitAndProvider,DBstate>(builder: (_,state){
      ///  Loading
      if (state is DBLoadingState) {
        return Center(child: CircularProgressIndicator(),);
      }

      /// Erorr
      else if (state is DBerrorState) {
        return Center(child: Text('${state.errorMsg}'),);
      }


      /// Ui reflecu data Show: ji ami boy t direct di show kru mData di
      else if (state is DBLoadedState) {
        // NoteModale mData hoi aitu
        mDataN = state.mData;

        return mDataN.isNotEmpty ?
        ListView.builder(

          itemCount: mDataN.length,
          itemBuilder: (context, index) =>
              ListTile(

                title: Text(mDataN[index].titleM),

                subtitle: Text(mDataN[index].descM),

                trailing: SizedBox(
                  width: 70,

                  child: Row(
                    children: [
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.push(context, MaterialPageRoute(builder: (
                      //         context) =>
                      //         Page2(
                      //           isUpdate: true,
                      //           id2: mDataN[index].idM,
                      //
                      //           /// Show dekhabor babe kora hoise mane ate judi anekoi
                      //           /// match kuru indesx r lgt tatia ami next page  old
                      //           /// likha thoka bur  automaticly show kuribo jene update click krute
                      //           // title2: mData[index].titleM,
                      //           // desc2: mData[index].descM,
                      //
                      //         ),));
                      //   },
                      //   child: Icon(Icons.edit),
                      // ),

                      SizedBox(
                        width: 11,
                      ),

                      // InkWell(
                      //   onTap: () async {
                      //     bool check = context.read<CubitAndProvider>().deletNotes(dIdC: mDataN[index].idM!);
                      //     if (check) {
                      //       context.watch<CubitAndProvider>().getInitialNotes();
                      //       Navigator.pop(context);
                      //     }
                      //   },
                      //   child: Icon(Icons.delete, color: Colors.red,),
                      // ),
                    ],
                  ),
                ),
              ),) :
        Center(child: Text('Not Add Note'));
      }

      /// Else dibo lagibo karon Main retrun pua a nai kahi karone aite
      /// condition retrun dia hoise babe error show kurise aru khai karin anrkoi
      /// retrun kurile elas dibo lage
      /// Judi Uprot dia bur Conditoin tru nhoi khai karone false retrun bisarise,
      else{
        return Container();
      }

    });
  }
  }