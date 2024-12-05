import 'package:cubit_block/cubite_list/global_state/global_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobaleCubit extends Cubit<GlobaleCubitState>{


  /// CONSTRACTOR VALUE EMPTY (INITIALDATA)
  GlobaleCubit() : super(GlobaleCubitState(mData: []));

  /// addNote function tu cureent Data aru new data olabore babe
  /// cerat kora hoise aru button add kuribor babe use kora hoi,
  /// Parameter  thoka maptu hl new data aru
  /// currentData tu hl old data khai karone current data
  /// add function use kora hoise jate eachdata khini add korar babe mane new data
  /// add notes mane new data , addnotes call hole latest data
  /// pass kora hoi user babe
  void addNotes(Map<String,dynamic>eachDate){

    /// state data tu old data
    List<Map<String,dynamic>> currentData=state.mData;


    /// new items add hobo:
    currentData.add(eachDate);
    emit(GlobaleCubitState(mData: currentData));
  }


  /// aite required hoi index , map:title and desc khumai ase direct ke
  /// addnoter dore automatic data loi jai: p
  /// Puara map Update kuribo loga hoise ate
  ///
  /// required Index mane hl je Page2 tut puri thoka list and map r index r lgt
  /// match kuribo lage , Aitu file r index aru uireflect kot puri thoka index2.
  ///
  /// requird updatedata mane hl je title aru desc tu match kuri update kuribo lage
  /// aru Cubit tot atumaticly title and desc data  call khai karone dekha napai

  void update({ required Index, required Map<String,dynamic>updateIndex}){

   // List<Map<String,dynamic>> currentData = state.mData;
    /// Short from likha hoise currentData logictu
    var currentData = state.mData;

    /// dutao kuribo  pare karon asign kora ase
    // state.mData[updateindex]

    /// ate likhobo nalge title and desc karon automaticly pass hoi
    /// get and set kuribo lagde
      currentData [Index] =updateIndex;
      emit(GlobaleCubitState(mData: currentData));
    }

    /// aite okl Index important hoi karone index lua hoise aru function kora hoise
  /// removeat ,
    void delet({required deletIndex}){

    var currentData = state.mData;
    currentData.removeAt(deletIndex);
    emit(GlobaleCubitState(mData: currentData));
    }

  }



