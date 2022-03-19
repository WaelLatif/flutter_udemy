import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates>
 {
  CounterCubit() : super(CounterInitialStates());
  static CounterCubit get(context) =>BlocProvider.of(context);
  int counter = 1;

  void minus()
  {
   counter--;
  emit(CounterMinusState());
 }
  void plus()
  {
   counter++;
emit(CounterPlusState());
  }
}