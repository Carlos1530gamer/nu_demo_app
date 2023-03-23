// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_shortened_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UrlShortenedModel _$UrlShortenedModelFromJson(Map<String, dynamic> json) {
  return _UrlShortenedModel.fromJson(json);
}

/// @nodoc
mixin _$UrlShortenedModel {
  String get self => throw _privateConstructorUsedError;
  String get short => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlShortenedModelCopyWith<UrlShortenedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlShortenedModelCopyWith<$Res> {
  factory $UrlShortenedModelCopyWith(
          UrlShortenedModel value, $Res Function(UrlShortenedModel) then) =
      _$UrlShortenedModelCopyWithImpl<$Res, UrlShortenedModel>;
  @useResult
  $Res call({String self, String short});
}

/// @nodoc
class _$UrlShortenedModelCopyWithImpl<$Res, $Val extends UrlShortenedModel>
    implements $UrlShortenedModelCopyWith<$Res> {
  _$UrlShortenedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? short = null,
  }) {
    return _then(_value.copyWith(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UrlShortenedModelCopyWith<$Res>
    implements $UrlShortenedModelCopyWith<$Res> {
  factory _$$_UrlShortenedModelCopyWith(_$_UrlShortenedModel value,
          $Res Function(_$_UrlShortenedModel) then) =
      __$$_UrlShortenedModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String self, String short});
}

/// @nodoc
class __$$_UrlShortenedModelCopyWithImpl<$Res>
    extends _$UrlShortenedModelCopyWithImpl<$Res, _$_UrlShortenedModel>
    implements _$$_UrlShortenedModelCopyWith<$Res> {
  __$$_UrlShortenedModelCopyWithImpl(
      _$_UrlShortenedModel _value, $Res Function(_$_UrlShortenedModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? short = null,
  }) {
    return _then(_$_UrlShortenedModel(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UrlShortenedModel implements _UrlShortenedModel {
  _$_UrlShortenedModel({required this.self, required this.short});

  factory _$_UrlShortenedModel.fromJson(Map<String, dynamic> json) =>
      _$$_UrlShortenedModelFromJson(json);

  @override
  final String self;
  @override
  final String short;

  @override
  String toString() {
    return 'UrlShortenedModel(self: $self, short: $short)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UrlShortenedModel &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.short, short) || other.short == short));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, self, short);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UrlShortenedModelCopyWith<_$_UrlShortenedModel> get copyWith =>
      __$$_UrlShortenedModelCopyWithImpl<_$_UrlShortenedModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlShortenedModelToJson(
      this,
    );
  }
}

abstract class _UrlShortenedModel implements UrlShortenedModel {
  factory _UrlShortenedModel(
      {required final String self,
      required final String short}) = _$_UrlShortenedModel;

  factory _UrlShortenedModel.fromJson(Map<String, dynamic> json) =
      _$_UrlShortenedModel.fromJson;

  @override
  String get self;
  @override
  String get short;
  @override
  @JsonKey(ignore: true)
  _$$_UrlShortenedModelCopyWith<_$_UrlShortenedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
