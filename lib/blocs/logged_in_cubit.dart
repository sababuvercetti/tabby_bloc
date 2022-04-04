import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tabby_boc/models/tabby_login_response.dart';

class LoggedInCubit extends HydratedCubit<TabbyLoginResponse> {
  LoggedInCubit(TabbyLoginResponse state) : super(state);

  save(TabbyLoginResponse state) async {
    emit(state);
  }

  @override
  TabbyLoginResponse? fromJson(Map<String, dynamic> json) {
    return TabbyLoginResponse.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TabbyLoginResponse state) {
    return state.toJson();
  }
}
