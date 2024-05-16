import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:sample_bloc/utility/failure/http_failure.dart';
import 'package:sample_bloc/utility/logger_config.dart';
import 'package:sample_bloc/utility/network/api_typednfs.dart';
import 'package:sample_bloc/utility/network/client.dart';

@Injectable(as: Client)
class HttpClient extends Client {
  HttpClient();

  @override
  ClientResult get({
    required String url,
    StringMapResult? headers,
    DynamicMapResult? params,
  }) async {
    final fullUrl = Uri.parse(url).replace(
      queryParameters: <String, dynamic>{...params ?? <String, dynamic>{}},
    );

    debugHttp(url: fullUrl, params: params);
    try {
      return _returnResponse(
        await http.get(
          fullUrl,
          headers: _httpHeaders(headers),
        ),
      );
    } on SocketException catch (e) {
      return left(HttpFailure.noInternet(e.message));
    } catch (e) {
      rethrow;
    }
  }

  @override
  ClientResult getPublic({
    required String url,
    StringMapResult? headers,
    DynamicMapResult? params,
  }) async {
    final fullUrl = Uri.parse(url).replace(queryParameters: params);

    debugHttp(url: fullUrl, params: params);
    try {
      return _returnResponse(
        await http.get(
          fullUrl,
          headers: _httpHeaders(headers),
        ),
      );
    } on SocketException catch (e) {
      return left(HttpFailure.noInternet(e.message));
    } catch (e) {
      rethrow;
    }
  }

  @override
  ClientResult post({
    required String url,
    DynamicMapResult? params,
    StringMapResult? headers,
    DynamicMapResult? requests,
  }) async {
    final fullUrl = Uri.parse(url).replace(queryParameters: params);

    debugHttp(
      url: fullUrl,
      params: params,
      requests: requests,
      methodType: HttpMethodType.post,
    );

    try {
      return _returnResponse(
        await http.post(
          fullUrl,
          headers: _httpHeaders(headers),
          body: jsonEncode({...requests ?? <String, dynamic>{}}),
        ),
      );
    } on SocketException catch (e) {
      return left(HttpFailure.noInternet(e.message));
    } catch (e) {
      rethrow;
    }
  }

  @override
  ClientResult delete({
    required String url,
    DynamicMapResult? params,
    StringMapResult? headers,
  }) async {
    final fullUrl = Uri.parse(url).replace(
      queryParameters: <String, dynamic>{
        ...params ?? <String, dynamic>{},
      },
    );
    debugHttp(
      url: fullUrl,
      params: params,
      methodType: HttpMethodType.delete,
    );
    try {
      return _returnResponse(
        await http.delete(
          fullUrl,
          headers: _httpHeaders(headers),
        ),
      );
    } on SocketException catch (e) {
      return left(HttpFailure.noInternet(e.message));
    } catch (e) {
      rethrow;
    }
  }

  @override
  ClientResult multipart({
    required String url,
    String method = 'POST',
    DynamicMapResult? params,
    StringMapResult? headers,
    StringMapResult? requests,
    List<MapEntry<String, File>> files = const [],
    List<MapEntry<String, Uint8List>> webFiles = const [],
  }) async {
    final fullUrl = Uri.parse(url).replace(queryParameters: params);

    debugHttp(
      url: fullUrl,
      params: params,
      requests: requests,
      methodType: method == 'POST' ? HttpMethodType.post : HttpMethodType.delete,
    );

    try {
      final multipartRequest = http.MultipartRequest(
        method,
        fullUrl,
      );

      multipartRequest.headers.addAll(_httpHeaders());
      if (kIsWeb || (webFiles.isNotEmpty && files.isEmpty)) {
        if (webFiles.isNotEmpty) {
          for (final fileData in webFiles) {
            multipartRequest.files.add(
              http.MultipartFile.fromBytes(
                fileData.key,
                fileData.value,
              ),
            );
          }
        }
      } else {
        if (files.isNotEmpty) {
          for (final fileData in files) {
            multipartRequest.files.add(
              await http.MultipartFile.fromPath(
                fileData.key,
                fileData.value.path,
              ),
            );
          }
        }
      }

      multipartRequest.fields.addAll(requests ?? <String, String>{});

      final multiPartResponse = await multipartRequest.send();

      return _returnResponse(await http.Response.fromStream(multiPartResponse));
    } on SocketException catch (e) {
      return left(HttpFailure.noInternet(e.message));
    } catch (e) {
      rethrow;
    }
  }

  StringMapResult _httpHeaders([StringMapResult? extraHeaders]) {
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      ...extraHeaders ?? {},
    };
  }

  HttpResponseResult _returnResponse(http.Response response) {
    debugResponse(body: response.body, statusCode: response.statusCode);

    switch (response.statusCode) {
      case 200:
        return Either.tryCatch(
          () {
            final data = json.decode(response.body) as DynamicMapResult;

            final tempStatus = data['statusCode'];
            final tempMessage = data['message'];

            final status = tempStatus is int ? tempStatus : 0;
            final message = tempMessage is String ? tempMessage : 'Somthing Went Wrong';

            if (status == 200) {
              return data;
            } else {
              throw HttpFailure.fetchData(message, status);
            }
          },
          (o, s) => o is HttpFailure ? o : HttpFailure.parsing(o.toString(), 500, s),
        );
      case 400:
        return Either.tryCatch(
          () {
            final data = json.decode(response.body) as DynamicMapResult;

            throw HttpFailure.badRequest((data['message'] ?? 'Bad Request') as String);
          },
          (o, s) => o is HttpFailure ? o : HttpFailure.badRequest(),
        );

      case 401:
        return Either.tryCatch(
          () {
            final data = json.decode(response.body) as DynamicMapResult;

            throw HttpFailure.unauthorized((data['message'] ?? 'Unauthorized') as String);
          },
          (o, s) => o is HttpFailure ? o : HttpFailure.unauthorized(),
        );
      case 403:
        return Either.tryCatch(
          () {
            final data = json.decode(response.body) as DynamicMapResult;

            throw HttpFailure.forbidden((data['message'] ?? 'Forbidden') as String);
          },
          (o, s) => o is HttpFailure ? o : HttpFailure.forbidden(),
        );

      default:
        return Either.tryCatch(
          () {
            final data = json.decode(response.body) as DynamicMapResult;
            final tempStatus = data['statusCode'];
            final tempMessage = data['message'];

            final status = tempStatus is int ? tempStatus : 0;
            final message = tempMessage is String ? tempMessage : 'Somthing Went Wrong';
            if (status == 200) {
              return data;
            } else {
              throw HttpFailure.fetchData(message, response.statusCode);
            }
          },
          (o, s) => o is HttpFailure
              ? o
              : HttpFailure.fetchData(
                  'Error occured while Communication with Server'
                  ' with StatusCode : ${response.statusCode}',
                  response.statusCode,
                ),
        );
    }
  }
}
