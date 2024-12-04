import 'package:flutter_bloc/flutter_bloc.dart';

/// Step:2 extend cubit class with data type and state:
class CounterCubit extends Cubit<int>{

/// a.
  CounterCubit() :super(0);

/// b. amar isa mote event add kuribo paru atia
 void incrementCount(){
   emit(state+1);
 }

 void decremnetCount(){
   emit(state-1);
 }


}