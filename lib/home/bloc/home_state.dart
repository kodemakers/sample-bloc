part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded({
    @Default(<Quote>[]) List<Quote> quotes,
    @Default(false) bool isLoadingMore,
    @Default(1) int currentPage,
    @Default(false) bool hasReachedMax,
    HttpFailure? loadMoreFailure,
  }) = _Loaded;
  const factory HomeState.error(HttpFailure? failure) = _Error;
}
