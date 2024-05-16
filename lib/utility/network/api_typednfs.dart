import 'package:fpdart/fpdart.dart';
import 'package:sample_bloc/utility/failure/http_failure.dart';

typedef DynamicMapResult = Map<String, dynamic>;

typedef StringMapResult = Map<String, String>;

typedef ApiNormalResult<T> = Either<HttpFailure, T>;

typedef ApiResult<T> = Future<ApiNormalResult<T>>;

typedef ClientResult = ApiResult<DynamicMapResult>;

typedef HttpResponseResult = Either<HttpFailure, DynamicMapResult>;
