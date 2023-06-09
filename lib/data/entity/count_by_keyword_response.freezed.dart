// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_by_keyword_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountByKeywordResponse _$CountByKeywordResponseFromJson(
    Map<String, dynamic> json) {
  return _CountByKeywordResponse.fromJson(json);
}

/// @nodoc
mixin _$CountByKeywordResponse {
  int get keyword => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountByKeywordResponseCopyWith<CountByKeywordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountByKeywordResponseCopyWith<$Res> {
  factory $CountByKeywordResponseCopyWith(CountByKeywordResponse value,
          $Res Function(CountByKeywordResponse) then) =
      _$CountByKeywordResponseCopyWithImpl<$Res, CountByKeywordResponse>;
  @useResult
  $Res call({int keyword, int count});
}

/// @nodoc
class _$CountByKeywordResponseCopyWithImpl<$Res,
        $Val extends CountByKeywordResponse>
    implements $CountByKeywordResponseCopyWith<$Res> {
  _$CountByKeywordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountByKeywordResponseCopyWith<$Res>
    implements $CountByKeywordResponseCopyWith<$Res> {
  factory _$$_CountByKeywordResponseCopyWith(_$_CountByKeywordResponse value,
          $Res Function(_$_CountByKeywordResponse) then) =
      __$$_CountByKeywordResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int keyword, int count});
}

/// @nodoc
class __$$_CountByKeywordResponseCopyWithImpl<$Res>
    extends _$CountByKeywordResponseCopyWithImpl<$Res,
        _$_CountByKeywordResponse>
    implements _$$_CountByKeywordResponseCopyWith<$Res> {
  __$$_CountByKeywordResponseCopyWithImpl(_$_CountByKeywordResponse _value,
      $Res Function(_$_CountByKeywordResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? count = null,
  }) {
    return _then(_$_CountByKeywordResponse(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountByKeywordResponse implements _CountByKeywordResponse {
  _$_CountByKeywordResponse({required this.keyword, required this.count});

  factory _$_CountByKeywordResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CountByKeywordResponseFromJson(json);

  @override
  final int keyword;
  @override
  final int count;

  @override
  String toString() {
    return 'CountByKeywordResponse(keyword: $keyword, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountByKeywordResponse &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keyword, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountByKeywordResponseCopyWith<_$_CountByKeywordResponse> get copyWith =>
      __$$_CountByKeywordResponseCopyWithImpl<_$_CountByKeywordResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountByKeywordResponseToJson(
      this,
    );
  }
}

abstract class _CountByKeywordResponse implements CountByKeywordResponse {
  factory _CountByKeywordResponse(
      {required final int keyword,
      required final int count}) = _$_CountByKeywordResponse;

  factory _CountByKeywordResponse.fromJson(Map<String, dynamic> json) =
      _$_CountByKeywordResponse.fromJson;

  @override
  int get keyword;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_CountByKeywordResponseCopyWith<_$_CountByKeywordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
