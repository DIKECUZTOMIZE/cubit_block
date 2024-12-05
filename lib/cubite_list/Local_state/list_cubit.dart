import 'package:cubit_block/cubite_list/Local_state/list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


/// Step:4.
class  ListCubit extends Cubit<ListState>{

  /// Initial Data 1.
  ListCubit() : super(ListState(mData: []));

  /// Event:2.
   void addMap(Map<String,dynamic> eacData){

     ///  Cureent State Olabo lage eate:
     ///  CurrentData mane hl jatia addMap call hobo khai timet current data
     ///  pai jabo aru currentData t purana aru new data o ahi goise
     ///  currentData aru newdata  get kora hobo useroloi
     List<Map<String,dynamic>> currentData = state.mData;

     ///  Item added in current data
     currentData.add(eacData);

     ///  currentData aru newdata  get kora hobo useroloi
     emit(ListState(mData: currentData));
   }
}