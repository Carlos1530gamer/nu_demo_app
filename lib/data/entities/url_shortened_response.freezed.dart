// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_shortened_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UrlShortenedResponse _$UrlShortenedResponseFromJson(Map<String, dynamic> json) {
  return _UrlShortenedResponse.fromJson(json);
}

/// @nodoc
mixin _$UrlShortenedResponse {
  @JsonKey(name: 'alias')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: '_links')
  UrlShortenedModel get shortedLinkModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlShortenedResponseCopyWith<UrlShortenedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlShortenedResponseCopyWith<$Res> {
  factory $UrlShortenedResponseCopyWith(UrlShortenedResponse value,
          $Res Function(UrlShortenedResponse) then) =
      _$UrlShortenedResponseCopyWithImpl<$Res, UrlShortenedResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'alias') String id,
      @JsonKey(name: '_links') UrlShortenedModel shortedLinkModel});

  $UrlShortenedModelCopyWith<$Res> get shortedLinkModel;
}

/// @nodoc
class _$UrlShortenedResponseCopyWithImpl<$Res,
        $Val extends UrlShortenedResponse>
    implements $UrlShortenedResponseCopyWith<$Res> {
  _$UrlShortenedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shortedLinkModel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      shortedLinkModel: null == shortedLinkModel
          ? _value.shortedLinkModel
          : shortedLinkModel // ignore: cast_nullable_to_non_nullable
              as UrlShortenedModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlShortenedModelCopyWith<$Res> get shortedLinkModel {
    return $UrlShortenedModelCopyWith<$Res>(_value.shortedLinkModel, (value) {
      return _then(_value.copyWith(shortedLinkModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UrlShortenedResponseCopyWith<$Res>
    implements $UrlShortenedResponseCopyWith<$Res> {
  factory _$$_UrlShortenedResponseCopyWith(_$_UrlShortenedResponse value,
          $Res Function(_$_UrlShortenedResponse) then) =
      __$$_UrlShortenedResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'alias') String id,
      @JsonKey(name: '_links') UrlShortenedModel shortedLinkModel});

  @override
  $UrlShortenedModelCopyWith<$Res> get shortedLinkModel;
}

/// @nodoc
class __$$_UrlShortenedResponseCopyWithImpl<$Res>
    extends _$UrlShortenedResponseCopyWithImpl<$Res, _$_UrlShortenedResponse>
    implements _$$_UrlShortenedResponseCopyWith<$Res> {
  __$$_UrlShortenedResponseCopyWithImpl(_$_UrlShortenedResponse _value,
      $Res Function(_$_UrlShortenedResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shortedLinkModel = null,
  }) {
    return _then(_$_UrlShortenedResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      shortedLinkModel: null == shortedLinkModel
          ? _value.shortedLinkModel
          : shortedLinkModel // ignore: cast_nullable_to_non_nullable
              as UrlShortenedModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UrlShortenedResponse implements _UrlShortenedResponse {
  _$_UrlShortenedResponse(
      {@JsonKey(name: 'alias') required this.id,
      @JsonKey(name: '_links') required this.shortedLinkModel});

  factory _$_UrlShortenedResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UrlShortenedResponseFromJson(json);

  @override
  @JsonKey(name: 'alias')
  final String id;
  @override
  @JsonKey(name: '_links')
  final UrlShortenedModel shortedLinkModel;

  @override
  String toString() {
    return 'UrlShortenedResponse(id: $id, shortedLinkModel: $shortedLinkModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UrlShortenedResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shortedLinkModel, shortedLinkModel) ||
                other.shortedLinkModel == shortedLinkModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, shortedLinkModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UrlShortenedResponseCopyWith<_$_UrlShortenedResponse> get copyWith =>
      __$$_UrlShortenedResponseCopyWithImpl<_$_UrlShortenedResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlShortenedResponseToJson(
      this,
    );
  }
}

abstract class _UrlShortenedResponse implements UrlShortenedResponse {
  factory _UrlShortenedResponse(
          {@JsonKey(name: 'alias')
              required final String id,
          @JsonKey(name: '_links')
              required final UrlShortenedModel shortedLinkModel}) =
      _$_UrlShortenedResponse;

  factory _UrlShortenedResponse.fromJson(Map<String, dynamic> json) =
      _$_UrlShortenedResponse.fromJson;

  @override
  @JsonKey(name: 'alias')
  String get id;
  @override
  @JsonKey(name: '_links')
  UrlShortenedModel get shortedLinkModel;
  @override
  @JsonKey(ignore: true)
  _$$_UrlShortenedResponseCopyWith<_$_UrlShortenedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
