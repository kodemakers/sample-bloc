import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_bloc/utility/bloc_observer.dart';
import 'package:sample_bloc/utility/injector/injector.dart';
import 'package:sample_bloc/utility/logger_config.dart';

void bootstrap(Widget builder) {
  Zone.current.fork().runGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = AppBlocObserver();
    await configureDependencies();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    runApp(builder);
  });

  FlutterError.onError = (details) {
    debugFlutterError(details.exceptionAsString(), stackTrace: details.stack);
  };
}
