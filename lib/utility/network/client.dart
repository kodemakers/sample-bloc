import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:sample_bloc/utility/network/api_typednfs.dart';

abstract class Client {
  const Client();

  ClientResult get({
    required String url,
    DynamicMapResult? params,
    StringMapResult? headers,
  });

  ClientResult getPublic({
    required String url,
    DynamicMapResult params,
    StringMapResult headers,
  });

  ClientResult post({
    required String url,
    DynamicMapResult params,
    StringMapResult headers,
    DynamicMapResult requests,
  });

  ClientResult delete({
    required String url,
    DynamicMapResult params,
    StringMapResult headers,
  });

  ClientResult multipart({
    required String url,
    String method = 'POST',
    DynamicMapResult params,
    StringMapResult headers,
    StringMapResult requests,
    List<MapEntry<String, File>> files,
    List<MapEntry<String, Uint8List>> webFiles,
  });
}
