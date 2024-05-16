// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuoteListResponse _$QuoteListResponseFromJson(Map<String, dynamic> json) {
  return _QuoteListResponse.fromJson(json);
}

/// @nodoc
mixin _$QuoteListResponse {
  @JsonKey(name: 'statusCode')
  int? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Quote> get quotes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteListResponseCopyWith<QuoteListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteListResponseCopyWith<$Res> {
  factory $QuoteListResponseCopyWith(
          QuoteListResponse value, $Res Function(QuoteListResponse) then) =
      _$QuoteListResponseCopyWithImpl<$Res, QuoteListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'statusCode') int? statusCode,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<Quote> quotes});
}

/// @nodoc
class _$QuoteListResponseCopyWithImpl<$Res, $Val extends QuoteListResponse>
    implements $QuoteListResponseCopyWith<$Res> {
  _$QuoteListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? quotes = null,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      quotes: null == quotes
          ? _value.quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as List<Quote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteListResponseImplCopyWith<$Res>
    implements $QuoteListResponseCopyWith<$Res> {
  factory _$$QuoteListResponseImplCopyWith(_$QuoteListResponseImpl value,
          $Res Function(_$QuoteListResponseImpl) then) =
      __$$QuoteListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'statusCode') int? statusCode,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<Quote> quotes});
}

/// @nodoc
class __$$QuoteListResponseImplCopyWithImpl<$Res>
    extends _$QuoteListResponseCopyWithImpl<$Res, _$QuoteListResponseImpl>
    implements _$$QuoteListResponseImplCopyWith<$Res> {
  __$$QuoteListResponseImplCopyWithImpl(_$QuoteListResponseImpl _value,
      $Res Function(_$QuoteListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? quotes = null,
  }) {
    return _then(_$QuoteListResponseImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      quotes: null == quotes
          ? _value._quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as List<Quote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteListResponseImpl extends _QuoteListResponse {
  const _$QuoteListResponseImpl(
      {@JsonKey(name: 'statusCode') this.statusCode,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<Quote> quotes = const <Quote>[]})
      : _quotes = quotes,
        super._();

  factory _$QuoteListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteListResponseImplFromJson(json);

  @override
  @JsonKey(name: 'statusCode')
  final int? statusCode;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<Quote> _quotes;
  @override
  @JsonKey(name: 'data')
  List<Quote> get quotes {
    if (_quotes is EqualUnmodifiableListView) return _quotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quotes);
  }

  @override
  String toString() {
    return 'QuoteListResponse(statusCode: $statusCode, message: $message, quotes: $quotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteListResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._quotes, _quotes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_quotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteListResponseImplCopyWith<_$QuoteListResponseImpl> get copyWith =>
      __$$QuoteListResponseImplCopyWithImpl<_$QuoteListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteListResponseImplToJson(
      this,
    );
  }
}

abstract class _QuoteListResponse extends QuoteListResponse {
  const factory _QuoteListResponse(
          {@JsonKey(name: 'statusCode') final int? statusCode,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<Quote> quotes}) =
      _$QuoteListResponseImpl;
  const _QuoteListResponse._() : super._();

  factory _QuoteListResponse.fromJson(Map<String, dynamic> json) =
      _$QuoteListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'statusCode')
  int? get statusCode;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<Quote> get quotes;
  @override
  @JsonKey(ignore: true)
  _$$QuoteListResponseImplCopyWith<_$QuoteListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
