import 'package:cubit_block/cubit_database/datahandl1/cubite_state.dart';
import 'package:cubit_block/cubit_database/datahandl1/dbHelper.dart';
import 'package:cubit_block/cubit_database/datahandl1/notemodal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Provider:
//class CubitAndProvider extends ChangeNotifier{

/// Cubit:
class CubitAndProvider extends Cubit<CubiState>{

  DbHelper dbHelper;
  List<NoteModal> allNoteF =[];
  CubitAndProvider({required this.dbHelper}) : super(CubiState(allNotesState:[]));

  var titleController =TextEditingController();
  var descController =TextEditingController();

  /// Event:
/// AddNote:
    addNotes(NoteModal newNote)async{
    bool check = await dbHelper.addNote(newNote);
    if(check){
       allNoteF = await dbHelper.fectsNote();
       emit(CubiState(allNotesState: allNoteF));
    }
  }

  /// Initial
    void getInitialNotes()async{
   allNoteF = await dbHelper.fectsNote();
   emit(CubiState(allNotesState: allNoteF));
    }

    updateNotes({required String titleC, required String descC, required int uIdC})async{
    bool check = await dbHelper.updateNotes(
        titleD: titleC, descD: descC, updateIDD: uIdC);
    if(check){
      allNoteF = await dbHelper.fectsNote();
      emit(CubiState(allNotesState: allNoteF));
    }
    }


    deletNotes ({required int dIdC})async{
    bool check = await dbHelper.deletNotes(deletIDD:dIdC );
    if (check){
      allNoteF = await dbHelper .fectsNote();
      emit(CubiState(allNotesState: allNoteF));
    }
    }



  /// Event:Provider:
  /// Addnots:
  //  addNotesF(NoteModal note)async{
  //   bool check = await dbHelper.addNote(note);
  //   if(check){
  //     allNoteF = await dbHelper.fectsNote();
  //     notifyListeners();
  //   }
  //
  // }

   // getfectsNote()=>allNoteF;

   ///InialNotes
  // void getInitalNotesL()async{
  //   allNoteF = await dbHelper.fectsNote();
  //   notifyListeners();
  // }


  /// Provider : update
  //  updateNotes ({required String titleC, required String descC, required int uIdC})async{
  //     bool check = await dbHelper.updateNotes(titleD: titleC, descD: descC, updateIDD:uIdC);
  //    if(check){
  //      allNoteF = await dbHelper.fectsNote();
  //      notifyListeners();
  //    }
  //   }


  ///  Delet:
  //   deletNotes({required int dIdC})async{
  //     bool check = await dbHelper.deletNotes(deletIDD:dIdC);
  //     if(check){
  //       allNoteF = await dbHelper.fectsNote();
  //       notifyListeners();
  //     }
  //   }





}