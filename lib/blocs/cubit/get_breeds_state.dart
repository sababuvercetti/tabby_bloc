part of 'get_breeds_cubit.dart';

@freezed
class GetBreedsState with _$GetBreedsState {
  const factory GetBreedsState.initial() = _Initial;
  const factory GetBreedsState.loading() = _Loading;
  const factory GetBreedsState.success(List<CatBreed> breeds) = _Success;
  const factory GetBreedsState.failed(String error) = _Failed;
}
