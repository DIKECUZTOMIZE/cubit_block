
import 'package:flutter/material.dart';



///* Class:
///*Count:
/// Count:Provider:
//class CounterCubitAadProvider  extends ChangeNotifier{

/// Count :Cubit
// class CounterCubitAadProvider  extends Cubit<CountState>{
// class CounterCubitAadProvider  extends Cubit<int>{

///* List :
/// Cubit
//class  ListCubitandProvider extends Cubit<ListState> {

/// Provider:List
class  ListCubitandProvider extends ChangeNotifier {


  ///* Constructor:

  /// List:
  /// Cubit
    //  ListCubitandProvider()  : super(ListState(mData: []));

    /// Provider:
    List<Map<String ,dynamic>> mData=[];

  /// Count:
     // Cubit:
     //  CounterCubitAadProvider() : super(CountState(count:0 ));

 ///  Provider
     //  int _count = 0;



  ///* Event:

  //  1. Count
//   incrementCount() {
//
//     /// Provider:
//     // _count++;
//     // notifyListeners();
//
//     /// Cubit:
//     // int currentState = ;
//     // currentState++;
//     // emit(CountState(count: ));
//
//     //emit(state+1);
//
//   }
//
//   decrementCount() {
//
//     /// Provider
//     //   // _count--;
//     //   // notifyListeners();
//
//     /// Cubite:
//     //     emit(state-1);
//     // }
// //  getNotes()=>CountState(count:) ;
//
//   }



// 2.List:
  /// add:Cubit
  // void addNotes({required  Map<String,dynamic>eachData}){
  //
  //   List<Map<String,dynamic>> currentData=state.mData;
  //   currentData.add(eachData);
  //   emit(ListState(mData: currentData));
  // }

  /// Provider:
  void addData(){
    mData.add({
      'name': 'sanjit',
      'desc'  : '9678844',
    });
    notifyListeners();
  }


  /// update:Cubit
  // void updateDate({required int updateIndex, required Map<String,dynamic> updateTitleAndDesc}){
  //   var currentData=state.mData;
  //   currentData[updateIndex]=updateTitleAndDesc;
  //   emit(ListState(mData: currentData));
  // }

 ///   Provider:
      void upDateData({required String title, required String desc, required int updateIndex}){

      mData[updateIndex]={
        'name': title,
        'desc'  : desc,
      };
      notifyListeners();
      }



  /// delet:Cubit
  // void delet ({required int deletIndex }){
  //   var currentData=state.mData;
  //   currentData.removeAt(deletIndex);
  //   emit(ListState(mData: currentData));
  // }

    /// provider:
    void deletNote({required int deletId}){
    mData.removeAt(deletId);
    notifyListeners();
    }

    /// Only Provider get kuribur babe
    List<Map<String,dynamic>> getNotes()=>mData;


}