import 'package:flutter_bloc/flutter_bloc.dart';

class NameCubit extends Cubit<String> {
  NameCubit(String initialState) : super(initialState);

  saveName(String name) {
    emit(name);
  }
}
