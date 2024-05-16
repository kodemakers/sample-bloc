// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuoteListResponseImpl _$$QuoteListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuoteListResponseImpl(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      quotes: (json['data'] as List<dynamic>?)
              ?.map((e) => Quote.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Quote>[],
    );

Map<String, dynamic> _$$QuoteListResponseImplToJson(
        _$QuoteListResponseImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.quotes,
    };
