import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_bloc/home/bloc/home_bloc.dart';
import 'package:sample_bloc/home/views/home_page_list_view.dart';
import 'package:sample_bloc/utility/injector/injector.dart';
import 'package:sample_bloc/widgets/common_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(const HomeEvent.load()),
      child: const Scaffold(
        appBar: CommonAppbar(title: 'Simple Example #1'),
        body: HomePageListView(),
      ),
    );
  }
}
