import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_bloc/home/bloc/home_bloc.dart';
import 'package:sample_bloc/home/views/home_page_loaded_listview.dart';
import 'package:sample_bloc/home/views/quote_list_views.dart';
import 'package:sample_bloc/utility/pagination_mixin.dart';

class HomePageListView extends StatefulWidget {
  const HomePageListView({super.key});

  @override
  State<HomePageListView> createState() => HomePageListViewState();
}

class HomePageListViewState extends State<HomePageListView> with PaginationMixin {
  @override
  void initState() {
    super.initState();
    initiatePagination();
  }

  @override
  void dispose() {
    disposePagination();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.map(
          initial: (state) => const QuoteLoadingListView(),
          loading: (state) => const QuoteLoadingListView(),
          loaded: (state) {
            return HomePageLoadedListview(
              quotes: state.quotes,
              controller: scrollPaginationController,
              isLoadingMore: state.isLoadingMore,
            );
          },
          error: (state) => const SizedBox(),
        );
      },
    );
  }

  @override
  void onReachedLast() {
    context.read<HomeBloc>().state.mapOrNull(
      loaded: (state) {
        if (state.isLoadingMore || state.hasReachedMax) return;
        context.read<HomeBloc>().add(const HomeEvent.loadMore());
      },
    );
  }
}
