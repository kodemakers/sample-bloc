import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_bloc/home/models/quote.dart';
import 'package:sample_bloc/home/repository/i_home_repository.dart';
import 'package:sample_bloc/utility/bloc_transformer.dart';
import 'package:sample_bloc/utility/failure/http_failure.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.homeRepository}) : super(const _Initial()) {
    on<_Load>(_onLoad);
    on<_LoadMore>(_onLoadMore, transformer: delayTransformer());
  }
  final IHomeRepository homeRepository;

  Future<void> _onLoad(
    _Load event,
    Emitter<HomeState> emit,
  ) async {
    emit(const _Loading());

    final failOrSucess = await homeRepository.getQuotes();

    emit(
      failOrSucess.fold(_Error.new, (r) => _Loaded(quotes: [...r.quotes], hasReachedMax: [...r.quotes].length < 10)),
    );
  }

  Future<void> _onLoadMore(
    _LoadMore event,
    Emitter<HomeState> emit,
  ) async {
    if (state is! _Loaded) return;

    final currentState = state as _Loaded;

    emit(currentState.copyWith(isLoadingMore: true, loadMoreFailure: null));

    final failOrSucess = await homeRepository.getQuotes(page: currentState.currentPage + 1);

    emit(
      failOrSucess.fold(
        (l) => currentState.copyWith(
          isLoadingMore: false,
          loadMoreFailure: l,
        ),
        (r) => currentState.copyWith(
          quotes: [...currentState.quotes, ...r.quotes],
          isLoadingMore: false,
          currentPage: currentState.currentPage + 1,
          loadMoreFailure: null,
          hasReachedMax: [...r.quotes].length < 10,
        ),
      ),
    );
  }
}
