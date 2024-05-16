part of 'i_home_repository.dart';

@Injectable(as: IHomeRepository)
class HomeRepository extends IHomeRepository {
  HomeRepository(super.client);

  @override
  ApiResult<QuoteListResponse> getQuotes({
    int page = 1,
    int limit = 25,
  }) async {
    final response = await client.get(
      url: AppStrings.quotesUrl,
      params: <String, String>{
        'page': '$page',
        'limit': '$limit',
      },
    );
    return response.fold(
      left,
      (r) => Either.tryCatch(
        () => QuoteListResponse.fromJson(r),
        (o, s) => HttpFailure.parsing(o.toString(), 500, s),
      ),
    );
  }
}
