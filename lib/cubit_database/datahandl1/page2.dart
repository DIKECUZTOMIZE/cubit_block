import 'package:cubit_block/cubit_database/datahandl1/cubit_privider_filse.dart';
import 'package:cubit_block/cubit_database/datahandl1/dbHelper.dart';
import 'package:cubit_block/cubit_database/datahandl1/notemodal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Page2 extends StatelessWidget{


  DbHelper dbHelper = DbHelper.getinstance();

var titleController =TextEditingController();
var descController =TextEditingController();

    int? id2;

    /// Aitu show kuribo babe lua hoise mane page1 r old data khini show kuribor babe
    // String title2;
    // String desc2;
    bool isUpdate;

    Page2({this.id2, this.isUpdate=false});

    /// nijor isa ji dia
   // Page2({this.id2,  this.title2='', this.desc2 ='' , this.isUpdate=false});

  @override
  Widget build(BuildContext context) {

    // titleController.text=title2;
    // descController.text=desc2;

    // if(isUpdate){
    //   titleController.text=title2;
    //   descController.text=desc2;
    // }


    return Scaffold(
       appBar: AppBar(
         title: Text('Page2'),
       ),
      body: Padding(
        padding: const EdgeInsets.all(21),
        child: Column(
          children: [
            Center(child: Text(isUpdate ? 'Update':'Add Note',style: TextStyle(fontSize: 30),),),
            SizedBox(height: 11,),
            TextField(
              controller:titleController ,
            ),
            SizedBox(
              height: 11,
            ),

            TextField(
              controller: descController,
            ),

            SizedBox(
              height: 11,
            ),

            Row(
              children: [

                OutlinedButton(onPressed: ()async{

                  if(isUpdate){
                  context.read<CubitAndProvider>().updateNotes(
                  titleC: titleController.text,
                  descC: descController.text,
                  uIdC: id2!);
                  // if(check){
                  //   Navigator.pop(context);
                  // }
                  }
                  else {
                    context.read<CubitAndProvider>().addNotes(NoteModal(
                        titleM: titleController.text,
                        descM: descController.text));
                  }
                  Navigator.pop(context);


                  /// Bool Check isempity
                    // if(titleController.text.isNotEmpty && descController.text.isNotEmpty) {
                    //   if(isUpdate){
                    //       context.read<CubitAndProvider>().updateNotes(
                    //         titleC: titleController.text,
                    //         descC: descController.text,
                    //         uIdC: id2!);
                    //     // if(check){
                    //     //   Navigator.pop(context);
                    //     // }
                    //   }
                    //   else{
                    //       context.read<CubitAndProvider>().addNotes(NoteModal(
                    //         titleM: titleController.text, descM: descController.text));
                        // if(check){
                        //   Navigator.pop(context);
                        // }
                     // }
                      // Navigator.pop(context);
                      // Navigator.pop(context);


                      // if(check){
                      //   Navigator.pop(context);
                      //   Navigator.pop(context);
                      // }


                      /// Provider :Upadte and Add Button:Logic
                      // if(isUpdate) {
                      //   check = context.read<CubitAndProvider>().updateNotes(
                      //       titleC: titleController.text,
                      //       descC: descController.text,
                      //       uIdC: id2!);
                      // }
                      // else {
                      //   check = context.read<CubitAndProvider>().addNotesF(NoteModal(
                      //       titleM: titleController.text,
                      //       descM: descController.text));
                      // }
                   // }
                   //  Navigator.pop(context);
                   //  Navigator.pop(context);
                  },
                    style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                        backgroundColor: WidgetStateProperty.all(Colors.blue)),
                    child: Text(isUpdate  ? 'Update':'Add')),


                SizedBox(
                  width: 11,
                ),


                OutlinedButton(onPressed: (){
                  Navigator.pop(context);
                }, 
                    style: ButtonStyle(
                        foregroundColor:WidgetStateProperty.all(Colors.white) ,
                        backgroundColor:WidgetStateProperty.all(Colors.blue) ),

                    child: Text('Cancel')),
              ],
            )
          ],
        ),
      ),
    );
  }
}