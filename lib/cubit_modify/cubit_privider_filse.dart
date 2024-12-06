import 'package:cubit_block/cubit_modify/cubite_state.dart';
import 'package:cubit_block/cubit_modify/dbHelper.dart';
import 'package:cubit_block/cubit_modify/notemodal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


/// Cubit:1
class CubitAndProvider extends Cubit<DBstate>{

  DbHelper dbHelper;
  List<NoteModal> allNoteF =[];

  /// 2. Modify inisiatlState: jeneka 0 ba  [] kahli dea hoi thik tanedore dia hoise
  CubitAndProvider({required this.dbHelper}) : super(DBInitialState() );

/// Normal
  //CubitAndProvider({required this.dbHelper}) : super(DBstate(allNotesState:[]));

  var titleController =TextEditingController();
  var descController =TextEditingController();

  ///* 3.Event:
    addNotes(NoteModal newNote)async{

      ///2. Modify: Loading State : Add note tut kora hoi karon user gom pabo Ui dekhi
      ///je Loadig hoi ase buli:
      ///
        emit(DBLoadingState());
        bool check = await dbHelper.addNote(newNote);

        /// True hole data add hoise
        if(check){
          allNoteF = await dbHelper.fectsNote();
          emit(DBLoadedState(mData: allNoteF));
        }

        ///false hole : Else mane hl Database r data add a hua nia mane error show kuribo lagibo
        else  {
          emit(DBerrorState(errorMsg: 'Note not add'));

        }


      /// Normal:
    // bool check = await dbHelper.addNote(newNote);
    // if(check){
    //    allNoteF = await dbHelper.fectsNote();
    //    emit(CubiState(allNotesState: allNoteF));
    // }
  }



  /// *Initial Normal
    void getInitialNotes()async{

      /// Modify:
      emit(DBLoadingState());
      allNoteF = await dbHelper.fectsNote();
      emit(DBLoadedState(mData: allNoteF));

      /// Normal:
   // allNoteF = await dbHelper.fectsNote();
   // emit(CubiState(allNotesState: allNoteF));
    }

    // updateNotes({required String titleC, required String descC, required int uIdC})async{
    // bool check = await dbHelper.updateNotes(
    //     titleD: titleC, descD: descC, updateIDD: uIdC);
    // if(check){
    //   allNoteF = await dbHelper.fectsNote();
    //   emit(CubiState(allNotesState: allNoteF));
    // }
    // }


    // deletNotes ({required int dIdC})async{
    // bool check = await dbHelper.deletNotes(deletIDD:dIdC );
    // if (check){
    //   allNoteF = await dbHelper .fectsNote();
    //   emit(CubiState(allNotesState: allNoteF));
    // }
    // }

}