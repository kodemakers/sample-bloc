import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/transformers.dart';

EventTransformer<T> delayTransformer<T>({int? milliseconds}) {
  return (events, mapper) => events.debounceTime(Duration(milliseconds: milliseconds ?? 600)).flatMap(mapper);
}
