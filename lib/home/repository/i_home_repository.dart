import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_bloc/constants/app_strings.dart';
import 'package:sample_bloc/home/responses/quote_list_response.dart';
import 'package:sample_bloc/utility/failure/http_failure.dart';
import 'package:sample_bloc/utility/network/api_typednfs.dart';
import 'package:sample_bloc/utility/network/client.dart';

part 'home_repository.dart';

abstract class IHomeRepository {
  IHomeRepository(this.client);
  final Client client;

  ApiResult<QuoteListResponse> getQuotes({
    int page = 1,
    int limit = 25,
  });
}
