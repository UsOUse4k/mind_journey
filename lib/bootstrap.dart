import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medi_mind/core/di/injection.dart';
import 'package:medi_mind/features/app/app.dart';
import 'package:medi_mind/firebase_options.dart';
import 'package:medi_mind/setup_hive.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:talker_flutter/talker_flutter.dart';

Future<void> bootstrap(WidgetsBinding widgetsBinding) async {
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  configureDependencies();

  await setupHive();

  Bloc.observer = TalkerBlocObserver(talker: getIt<Talker>());

  runApp(const App());

  FlutterNativeSplash.remove();
}
