// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'breed_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BreedDetail _$BreedDetailFromJson(Map<String, dynamic> json) {
  return _BreedDetail.fromJson(json);
}

/// @nodoc
class _$BreedDetailTearOff {
  const _$BreedDetailTearOff();

  _BreedDetail call({String? id, String? name, String? description}) {
    return _BreedDetail(
      id: id,
      name: name,
      description: description,
    );
  }

  BreedDetail fromJson(Map<String, Object?> json) {
    return BreedDetail.fromJson(json);
  }
}

/// @nodoc
const $BreedDetail = _$BreedDetailTearOff();

/// @nodoc
mixin _$BreedDetail {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedDetailCopyWith<BreedDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedDetailCopyWith<$Res> {
  factory $BreedDetailCopyWith(
          BreedDetail value, $Res Function(BreedDetail) then) =
      _$BreedDetailCopyWithImpl<$Res>;
  $Res call({String? id, String? name, String? description});
}

/// @nodoc
class _$BreedDetailCopyWithImpl<$Res> implements $BreedDetailCopyWith<$Res> {
  _$BreedDetailCopyWithImpl(this._value, this._then);

  final BreedDetail _value;
  // ignore: unused_field
  final $Res Function(BreedDetail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BreedDetailCopyWith<$Res>
    implements $BreedDetailCopyWith<$Res> {
  factory _$BreedDetailCopyWith(
          _BreedDetail value, $Res Function(_BreedDetail) then) =
      __$BreedDetailCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name, String? description});
}

/// @nodoc
class __$BreedDetailCopyWithImpl<$Res> extends _$BreedDetailCopyWithImpl<$Res>
    implements _$BreedDetailCopyWith<$Res> {
  __$BreedDetailCopyWithImpl(
      _BreedDetail _value, $Res Function(_BreedDetail) _then)
      : super(_value, (v) => _then(v as _BreedDetail));

  @override
  _BreedDetail get _value => super._value as _BreedDetail;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_BreedDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BreedDetail implements _BreedDetail {
  _$_BreedDetail({this.id, this.name, this.description});

  factory _$_BreedDetail.fromJson(Map<String, dynamic> json) =>
      _$$_BreedDetailFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'BreedDetail(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BreedDetail &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$BreedDetailCopyWith<_BreedDetail> get copyWith =>
      __$BreedDetailCopyWithImpl<_BreedDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BreedDetailToJson(this);
  }
}

abstract class _BreedDetail implements BreedDetail {
  factory _BreedDetail({String? id, String? name, String? description}) =
      _$_BreedDetail;

  factory _BreedDetail.fromJson(Map<String, dynamic> json) =
      _$_BreedDetail.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$BreedDetailCopyWith<_BreedDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
