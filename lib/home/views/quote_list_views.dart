// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:sample_bloc/home/models/quote.dart';
import 'package:sample_bloc/home/widgets/quote_list_item_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class QuoteLoadingListView extends StatelessWidget {
  const QuoteLoadingListView({
    super.key,
    this.useSilver = false,
  });
  final bool useSilver;

  @override
  Widget build(BuildContext context) {
    if (useSilver) {
      return Skeletonizer.sliver(
        child: SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          sliver: SliverList.separated(
            itemCount: 15,
            itemBuilder: (context, index) {
              const quote = Quote(
                quoteText: 'Forty is the old age of youth, fifty is the youth of old age.',
                quoteAuthor: 'Henri Frederic Amiel',
              );
              return const QuoteListItemView(quote: quote);
            },
            separatorBuilder: (_, __) => const Gap(16),
          ),
        ),
      );
    }
    return Skeletonizer(
      child: ListView.separated(
        itemCount: 15,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        itemBuilder: (context, index) {
          const quote = Quote(
            quoteText: 'Forty is the old age of youth, fifty is the youth of old age.',
            quoteAuthor: 'Henri Frederic Amiel',
          );
          return const QuoteListItemView(quote: quote);
        },
        separatorBuilder: (_, __) => const Gap(16),
      ),
    );
  }
}

class QupteLoadedListView extends StatelessWidget {
  const QupteLoadedListView({
    super.key,
    this.quotes = const <Quote>[],
  });
  final List<Quote> quotes;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      sliver: SliverList.separated(
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          final quote = quotes[index];
          return QuoteListItemView(quote: quote);
        },
        separatorBuilder: (_, __) => const Gap(16),
      ),
    );
  }
}
