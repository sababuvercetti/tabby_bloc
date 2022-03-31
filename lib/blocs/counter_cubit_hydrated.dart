import 'package:hydrated_bloc/hydrated_bloc.dart';

class CounterCubitHydrated extends HydratedCubit<int> {
  CounterCubitHydrated(int initialState) : super(initialState);

  add() {
    emit(state + 1);
  }

  subtract() {
    emit(state - 1);
  }

  ///Read from the hydrated storage
  @override
  int? fromJson(Map<String, dynamic> json) {
    return json['value'];
  }

  /// Write to hydrated
  @override
  Map<String, dynamic>? toJson(int state) {
    return {'value': state};
  }
}