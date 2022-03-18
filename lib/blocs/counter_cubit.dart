import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);

  add() {
    emit(state + 1);
  }

  subtract() {
    emit(state - 1);
  }
}
