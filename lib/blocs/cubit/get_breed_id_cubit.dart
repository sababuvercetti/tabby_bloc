import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tabby_boc/models/breed_detail.dart';
import 'package:tabby_boc/models/cat_breed.dart';

part 'get_breed_id_state.dart';
part 'get_breed_id_cubit.freezed.dart';

class GetBreedIdCubit extends Cubit<GetBreedIdState> {
  GetBreedIdCubit() : super(GetBreedIdState.initial());
  getBreed(String id) async {
    emit(GetBreedIdState.loading());
    try {
      var response = await Dio().get('https://api.thecatapi.com/v1/breeds/$id');
      emit(GetBreedIdState.success(BreedDetail.fromJson(response.data)));
    } catch (e) {
      emit(GetBreedIdState.failed(e.toString()));
    }
  }
}
