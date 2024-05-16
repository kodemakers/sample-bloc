// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sample_bloc/home/models/quote.dart';

class QuoteListItemView extends StatelessWidget {
  const QuoteListItemView({
    required this.quote,
    super.key,
  });
  final Quote quote;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.5,
      child: ListTile(
        title: Text(quote.quoteText ?? ''),
        subtitle: Text(
          '- ${quote.quoteAuthor ?? ''}',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                height: 2,
              ),
        ),
      ),
    );
  }
}
