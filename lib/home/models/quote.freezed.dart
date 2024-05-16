// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return _Quote.fromJson(json);
}

/// @nodoc
mixin _$Quote {
  @JsonKey(name: 'quoteText')
  String? get quoteText => throw _privateConstructorUsedError;
  @JsonKey(name: 'quoteAuthor')
  String? get quoteAuthor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteCopyWith<Quote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res, Quote>;
  @useResult
  $Res call(
      {@JsonKey(name: 'quoteText') String? quoteText,
      @JsonKey(name: 'quoteAuthor') String? quoteAuthor});
}

/// @nodoc
class _$QuoteCopyWithImpl<$Res, $Val extends Quote>
    implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quoteText = freezed,
    Object? quoteAuthor = freezed,
  }) {
    return _then(_value.copyWith(
      quoteText: freezed == quoteText
          ? _value.quoteText
          : quoteText // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteAuthor: freezed == quoteAuthor
          ? _value.quoteAuthor
          : quoteAuthor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteImplCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$$QuoteImplCopyWith(
          _$QuoteImpl value, $Res Function(_$QuoteImpl) then) =
      __$$QuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'quoteText') String? quoteText,
      @JsonKey(name: 'quoteAuthor') String? quoteAuthor});
}

/// @nodoc
class __$$QuoteImplCopyWithImpl<$Res>
    extends _$QuoteCopyWithImpl<$Res, _$QuoteImpl>
    implements _$$QuoteImplCopyWith<$Res> {
  __$$QuoteImplCopyWithImpl(
      _$QuoteImpl _value, $Res Function(_$QuoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quoteText = freezed,
    Object? quoteAuthor = freezed,
  }) {
    return _then(_$QuoteImpl(
      quoteText: freezed == quoteText
          ? _value.quoteText
          : quoteText // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteAuthor: freezed == quoteAuthor
          ? _value.quoteAuthor
          : quoteAuthor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteImpl extends _Quote {
  const _$QuoteImpl(
      {@JsonKey(name: 'quoteText') this.quoteText,
      @JsonKey(name: 'quoteAuthor') this.quoteAuthor})
      : super._();

  factory _$QuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteImplFromJson(json);

  @override
  @JsonKey(name: 'quoteText')
  final String? quoteText;
  @override
  @JsonKey(name: 'quoteAuthor')
  final String? quoteAuthor;

  @override
  String toString() {
    return 'Quote(quoteText: $quoteText, quoteAuthor: $quoteAuthor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteImpl &&
            (identical(other.quoteText, quoteText) ||
                other.quoteText == quoteText) &&
            (identical(other.quoteAuthor, quoteAuthor) ||
                other.quoteAuthor == quoteAuthor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quoteText, quoteAuthor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      __$$QuoteImplCopyWithImpl<_$QuoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteImplToJson(
      this,
    );
  }
}

abstract class _Quote extends Quote {
  const factory _Quote(
      {@JsonKey(name: 'quoteText') final String? quoteText,
      @JsonKey(name: 'quoteAuthor') final String? quoteAuthor}) = _$QuoteImpl;
  const _Quote._() : super._();

  factory _Quote.fromJson(Map<String, dynamic> json) = _$QuoteImpl.fromJson;

  @override
  @JsonKey(name: 'quoteText')
  String? get quoteText;
  @override
  @JsonKey(name: 'quoteAuthor')
  String? get quoteAuthor;
  @override
  @JsonKey(ignore: true)
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
