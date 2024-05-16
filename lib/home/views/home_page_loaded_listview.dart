// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sample_bloc/home/bloc/home_bloc.dart';
import 'package:sample_bloc/home/models/quote.dart';
import 'package:sample_bloc/home/views/quote_list_views.dart';

class HomePageLoadedListview extends StatelessWidget {
  const HomePageLoadedListview({
    required this.controller,
    super.key,
    this.quotes = const <Quote>[],
    this.isLoadingMore = false,
  });
  final List<Quote> quotes;
  final ScrollController controller;
  final bool isLoadingMore;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<HomeBloc>().add(const HomeEvent.load());
      },
      child: CustomScrollView(
        controller: controller,
        slivers: [
          QupteLoadedListView(
            key: ValueKey('QUOTES_LIST_LENGTH_${quotes.length}'),
            quotes: quotes,
          ),
          const SliverGap(16),
          if (isLoadingMore) const QuoteLoadingListView(useSilver: true),
        ],
      ),
    );
  }
}
