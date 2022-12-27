import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_course/modules/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitialState());

  //object to easy use the cubit every where in project
  static CounterCubit get(context) => BlocProvider.of(context);
  int counter = 1;

  void  minus (){
    counter --;
    emit(CounterMinusState(counter));
  }

  void plus(){
    counter ++;
    emit(CounterPlusState(counter));
  }

}