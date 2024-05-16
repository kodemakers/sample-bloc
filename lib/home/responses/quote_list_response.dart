import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_bloc/home/models/quote.dart';

part 'quote_list_response.freezed.dart';
part 'quote_list_response.g.dart';

@freezed
class QuoteListResponse with _$QuoteListResponse {
  const factory QuoteListResponse({
    @JsonKey(name: 'statusCode') int? statusCode,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') @Default(<Quote>[]) List<Quote> quotes,
  }) = _QuoteListResponse;
  const QuoteListResponse._();

  factory QuoteListResponse.fromJson(Map<String, dynamic> json) => _$QuoteListResponseFromJson(json);
}
