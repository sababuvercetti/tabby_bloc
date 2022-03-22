part of 'get_breed_id_cubit.dart';

@freezed
class GetBreedIdState with _$GetBreedIdState {
  const factory GetBreedIdState.initial() = _Initial;
  const factory GetBreedIdState.loading() = _Loading;
  const factory GetBreedIdState.success(BreedDetail breed) = _Success;
  const factory GetBreedIdState.failed(String error) = _Failed;
}
