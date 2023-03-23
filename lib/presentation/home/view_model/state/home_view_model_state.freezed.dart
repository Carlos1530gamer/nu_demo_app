// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeViewModelState {
  String get inputUrl => throw _privateConstructorUsedError;
  List<UrlShortenedModel> get recentlyShortenedLinks =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewModelStateCopyWith<HomeViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewModelStateCopyWith<$Res> {
  factory $HomeViewModelStateCopyWith(
          HomeViewModelState value, $Res Function(HomeViewModelState) then) =
      _$HomeViewModelStateCopyWithImpl<$Res, HomeViewModelState>;
  @useResult
  $Res call({String inputUrl, List<UrlShortenedModel> recentlyShortenedLinks});
}

/// @nodoc
class _$HomeViewModelStateCopyWithImpl<$Res, $Val extends HomeViewModelState>
    implements $HomeViewModelStateCopyWith<$Res> {
  _$HomeViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputUrl = null,
    Object? recentlyShortenedLinks = null,
  }) {
    return _then(_value.copyWith(
      inputUrl: null == inputUrl
          ? _value.inputUrl
          : inputUrl // ignore: cast_nullable_to_non_nullable
              as String,
      recentlyShortenedLinks: null == recentlyShortenedLinks
          ? _value.recentlyShortenedLinks
          : recentlyShortenedLinks // ignore: cast_nullable_to_non_nullable
              as List<UrlShortenedModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeViewModelStateCopyWith<$Res>
    implements $HomeViewModelStateCopyWith<$Res> {
  factory _$$_HomeViewModelStateCopyWith(_$_HomeViewModelState value,
          $Res Function(_$_HomeViewModelState) then) =
      __$$_HomeViewModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String inputUrl, List<UrlShortenedModel> recentlyShortenedLinks});
}

/// @nodoc
class __$$_HomeViewModelStateCopyWithImpl<$Res>
    extends _$HomeViewModelStateCopyWithImpl<$Res, _$_HomeViewModelState>
    implements _$$_HomeViewModelStateCopyWith<$Res> {
  __$$_HomeViewModelStateCopyWithImpl(
      _$_HomeViewModelState _value, $Res Function(_$_HomeViewModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputUrl = null,
    Object? recentlyShortenedLinks = null,
  }) {
    return _then(_$_HomeViewModelState(
      inputUrl: null == inputUrl
          ? _value.inputUrl
          : inputUrl // ignore: cast_nullable_to_non_nullable
              as String,
      recentlyShortenedLinks: null == recentlyShortenedLinks
          ? _value._recentlyShortenedLinks
          : recentlyShortenedLinks // ignore: cast_nullable_to_non_nullable
              as List<UrlShortenedModel>,
    ));
  }
}

/// @nodoc

class _$_HomeViewModelState implements _HomeViewModelState {
  _$_HomeViewModelState(
      {this.inputUrl = '',
      final List<UrlShortenedModel> recentlyShortenedLinks = const []})
      : _recentlyShortenedLinks = recentlyShortenedLinks;

  @override
  @JsonKey()
  final String inputUrl;
  final List<UrlShortenedModel> _recentlyShortenedLinks;
  @override
  @JsonKey()
  List<UrlShortenedModel> get recentlyShortenedLinks {
    if (_recentlyShortenedLinks is EqualUnmodifiableListView)
      return _recentlyShortenedLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentlyShortenedLinks);
  }

  @override
  String toString() {
    return 'HomeViewModelState(inputUrl: $inputUrl, recentlyShortenedLinks: $recentlyShortenedLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeViewModelState &&
            (identical(other.inputUrl, inputUrl) ||
                other.inputUrl == inputUrl) &&
            const DeepCollectionEquality().equals(
                other._recentlyShortenedLinks, _recentlyShortenedLinks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputUrl,
      const DeepCollectionEquality().hash(_recentlyShortenedLinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeViewModelStateCopyWith<_$_HomeViewModelState> get copyWith =>
      __$$_HomeViewModelStateCopyWithImpl<_$_HomeViewModelState>(
          this, _$identity);
}

abstract class _HomeViewModelState implements HomeViewModelState {
  factory _HomeViewModelState(
          {final String inputUrl,
          final List<UrlShortenedModel> recentlyShortenedLinks}) =
      _$_HomeViewModelState;

  @override
  String get inputUrl;
  @override
  List<UrlShortenedModel> get recentlyShortenedLinks;
  @override
  @JsonKey(ignore: true)
  _$$_HomeViewModelStateCopyWith<_$_HomeViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
