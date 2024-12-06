import 'package:cubit_block/cubit_database/datahandl1/notemodal.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {

  DbHelper._();

  static DbHelper getinstance()=> DbHelper._();

  Database? mData;

  static const NOTE_TABLE = 'n_table';
  static const NOTE_COLUMN_ID = 'n_id';
  static const NOTE_COLUMN_TITLE = 'n_title';
  static const NOTE_COLUMN_DESC = 'n_desc';

  Future<Database>initDB()async{
    mData = mData ?? await openDB();
    print('open DB');
    return mData!;
  }

  Future<Database>openDB()async{

      var dirPath = await getApplicationDocumentsDirectory();
      var dbPath = await join(dirPath.path, 'noteDB.db');

      print('creat DB');

      return openDatabase(dbPath,version: 1,onCreate: (db, version) {
        db.execute('create table $NOTE_TABLE ( $NOTE_COLUMN_ID integer primary key autoIncrement, $NOTE_COLUMN_TITLE text, $NOTE_COLUMN_DESC)');
      },);
  }

  Future<bool> addNote(NoteModal newNote)async{
    Database db = await initDB();
    int rowsEffected = await db.insert(NOTE_TABLE,newNote.toMap());
    return rowsEffected >0;
  }
  Future<List<NoteModal>> fectsNote()async{
    Database db = await initDB();
    List<Map<String ,dynamic>> allNote = await db.query(NOTE_TABLE);

    List<NoteModal> newData = [];

    for(Map<String,dynamic> eachData in allNote){
      NoteModal eacheNots = NoteModal.fromMap(eachData);
      newData.add(eacheNots);
    }
    return newData;
  }

  Future<bool> updateNotes ({required String titleD,required String descD,required int updateIDD})async{
    Database db = await initDB();
    int rowsEffected = await db.update(NOTE_TABLE,{
      NOTE_COLUMN_TITLE:titleD,
      NOTE_COLUMN_DESC:descD,
    },where: "$NOTE_COLUMN_ID = ?", whereArgs: ['$updateIDD']);
    return rowsEffected >0;
  }

  Future<bool> deletNotes({required int deletIDD})async{
    Database db = await initDB();
    int rowsEffected = await db.delete(NOTE_TABLE,
    where: '$NOTE_COLUMN_ID = ?' ,whereArgs: ['$deletIDD']);
    return rowsEffected >0;

  }
}