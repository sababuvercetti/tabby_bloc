import 'package:freezed_annotation/freezed_annotation.dart';

part 'breed_detail.freezed.dart';
part 'breed_detail.g.dart';

@freezed
class BreedDetail with _$BreedDetail {
  factory BreedDetail({String? id, String? name, String? description}) =
      _BreedDetail;

  factory BreedDetail.fromJson(Map<String, dynamic> json) =>
      _$BreedDetailFromJson(json);
}
