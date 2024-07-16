import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_mind/core/di/injection.dart';
import 'package:medi_mind/features/auth/presentation/blocs/user_status/user_status_bloc.dart';
import 'package:medi_mind/features/medicine/presentation/blocs/bloc/consume_medicine_bloc.dart';
import 'package:medi_mind/features/medicine/presentation/blocs/get_medicines/medicines_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<UserStatusBloc>()..add(const UserStatusEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<MedicinesBloc>()..add(const MedicinesEvent.getMedicines()),
        ),
        BlocProvider(
          create: (context) => getIt<ConsumeMedicineBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: getIt<GoRouter>(),
      ),
    );
  }
}
