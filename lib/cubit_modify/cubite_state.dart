import 'package:cubit_block/cubit_modify/notemodal.dart';
/// Very High dataHandl:


///A. Abstrac class bonua hoise karon iar object creat nokorar babe

abstract class DBstate{}

/// B.Data Show kuribor babe
class DBInitialState extends DBstate{}

/// C. loading
class DBLoadingState extends DBstate{}

/// D.loaded: Data pai jua man aru data Handl
class DBLoadedState extends DBstate{

  List<NoteModal> mData;
  DBLoadedState({required this.mData});

}


/// E.Error
class DBerrorState extends DBstate{

  String errorMsg;

  DBerrorState({required this.errorMsg});

}


/// Noramal Data Handle:
// class CubiState {
//
//   List<NoteModal> allNotesState=[];
//   CubiState({required this.allNotesState});
//
// }