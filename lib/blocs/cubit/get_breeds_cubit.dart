import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tabby_boc/models/cat_breed.dart';

part 'get_breeds_state.dart';
part 'get_breeds_cubit.freezed.dart';

class GetBreedsCubit extends Cubit<GetBreedsState> {
  GetBreedsCubit() : super(const GetBreedsState.initial());

  getCatBreeds() async {
    emit(const GetBreedsState.loading());
    try {
      var response = await Dio().get('https://api.thecatapi.com/v1/breeds',
          options: Options(
              headers: {'x-api-key': '1388090b-bec1-4ab1-b868-f8f651d2abfb'}));
      List jsonData = response.data;
      emit(GetBreedsState.success(List.generate(
          jsonData.length, (index) => CatBreed.fromJson(jsonData[index]))));
    } catch (e) {
      emit(GetBreedsState.failed(e.toString()));
    }
  }
}
