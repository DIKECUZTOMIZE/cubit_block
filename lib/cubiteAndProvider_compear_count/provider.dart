

import 'package:flutter_bloc/flutter_bloc.dart';

  //class CounterProvider extends ChangeNotifier{
  class CounterCubitProvider extends Cubit<int>{

    /// Data Handel:

   // int _count =0;

   CounterCubitProvider():super(0);

    /// Event:

  void incremnetCount(){

     // _count++;
     // notifyListeners();

    emit(state + 1);

  }

  void decrementCount(){

     // _count --;
     // notifyListeners();


    emit(state -1);

  }

 // int getData()=>_count;

  int getData()=>state;
  }