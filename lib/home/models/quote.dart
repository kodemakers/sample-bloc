import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote.freezed.dart';
part 'quote.g.dart';

@freezed
class Quote with _$Quote {
  const factory Quote({
    @JsonKey(name: 'quoteText') String? quoteText,
    @JsonKey(name: 'quoteAuthor') String? quoteAuthor,
  }) = _Quote;
  const Quote._();

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
}
