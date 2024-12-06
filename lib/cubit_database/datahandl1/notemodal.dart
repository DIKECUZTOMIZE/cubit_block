import 'package:cubit_block/cubit_database/datahandl1/dbHelper.dart';

class NoteModal{

  int? idM;
  String titleM;
  String descM;

  NoteModal({ this.idM, required this.titleM,required this.descM});

factory NoteModal.fromMap(Map<String,dynamic> map){
   return NoteModal(
        idM: map[DbHelper.NOTE_COLUMN_ID],
        titleM: map[DbHelper.NOTE_COLUMN_TITLE],
        descM: map[DbHelper.NOTE_COLUMN_DESC]
    );
  }

  Map<String,dynamic>toMap(){
    return{
      DbHelper.NOTE_COLUMN_TITLE:titleM,
      DbHelper.NOTE_COLUMN_DESC:descM,
    };
  }

}