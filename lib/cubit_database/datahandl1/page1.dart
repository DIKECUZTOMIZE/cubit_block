import 'package:cubit_block/cubit_database/datahandl1/cubit_privider_filse.dart';
import 'package:cubit_block/cubit_database/datahandl1/dbHelper.dart';
import 'package:cubit_block/cubit_database/datahandl1/main.dart';
import 'package:cubit_block/cubit_database/datahandl1/notemodal.dart';
import 'package:cubit_block/cubit_database/datahandl1/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page1 extends StatefulWidget{

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  DbHelper dbHelper = DbHelper.getinstance();

  List<NoteModal> mData=[];

  @override
  void initState() {
    super.initState();

    context.read<CubitAndProvider>().getInitialNotes();
  }
  @override
  Widget build(BuildContext context) {
      mData = context.watch<CubitAndProvider>().state.allNotesState;
    //  mData = context.watch<CubitAndProvider>().getfectsNote();
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),

      body:mData.isNotEmpty? ListView.builder(

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

                    /// Judi direct context. read() logai delet kurile  scren black hoi jai khai karone moi
                    /// bool chek logai use kuribo loga hoise
                  //context.read<CubitAndProvider>().deletNotes(dIdC:mData[index].idM!);
                   //  bool check  = context.watch()<CubitAndProvider>().deletNotes(dIdC:mData[index].idM!);

                    bool check= context.read<CubitAndProvider>().deletNotes(dIdC:mData[index].idM!);
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


      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),));
      },child: Text('Add'),),
    );
  }
}