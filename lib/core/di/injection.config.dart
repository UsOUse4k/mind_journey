// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:medi_mind/core/router/go_router_module.dart' as _i18;
import 'package:medi_mind/features/auth/data/firebase_auth_facade.dart' as _i13;
import 'package:medi_mind/features/auth/domain/i_auth_facade.dart' as _i12;
import 'package:medi_mind/features/auth/presentation/blocs/login/login_bloc.dart'
    as _i15;
import 'package:medi_mind/features/auth/presentation/blocs/register/register_bloc.dart'
    as _i14;
import 'package:medi_mind/features/auth/presentation/blocs/user_status/user_status_bloc.dart'
    as _i16;
import 'package:medi_mind/features/medicine/data/firebase_medicine_repository.dart'
    as _i8;
import 'package:medi_mind/features/medicine/domain/i_medicine_repository.dart'
    as _i7;
import 'package:medi_mind/features/medicine/presentation/blocs/bloc/consume_medicine_bloc.dart'
    as _i11;
import 'package:medi_mind/features/medicine/presentation/blocs/create_medicine/create_medicine_bloc.dart'
    as _i9;
import 'package:medi_mind/features/medicine/presentation/blocs/get_medicines/medicines_bloc.dart'
    as _i10;
import 'package:medi_mind/firebase_module.dart' as _i17;
import 'package:medi_mind/talker_module.dart' as _i19;
import 'package:talker_flutter/talker_flutter.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    final goRouterModule = _$GoRouterModule();
    final talkerModule = _$TalkerModule();
    gh.factory<_i3.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.factory<_i4.FirebaseFirestore>(() => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i5.GoRouter>(() => goRouterModule.goRouter());
    gh.lazySingleton<_i6.Talker>(() => talkerModule.talker());
    gh.lazySingleton<_i7.IMedicineRepository>(
        () => _i8.FirebaseMedicineRepository(gh<_i3.FirebaseAuth>()));
    gh.factory<_i9.CreateMedicineBloc>(
        () => _i9.CreateMedicineBloc(gh<_i7.IMedicineRepository>()));
    gh.factory<_i10.MedicinesBloc>(
        () => _i10.MedicinesBloc(gh<_i7.IMedicineRepository>()));
    gh.factory<_i11.ConsumeMedicineBloc>(
        () => _i11.ConsumeMedicineBloc(gh<_i7.IMedicineRepository>()));
    gh.lazySingleton<_i12.IAuthFacade>(() => _i13.FirebaseAuthFacade(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.FirebaseFirestore>(),
        ));
    gh.factory<_i14.RegisterBloc>(
        () => _i14.RegisterBloc(gh<_i12.IAuthFacade>()));
    gh.factory<_i15.LoginBloc>(() => _i15.LoginBloc(gh<_i12.IAuthFacade>()));
    gh.lazySingleton<_i16.UserStatusBloc>(
        () => _i16.UserStatusBloc(gh<_i12.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseModule extends _i17.FirebaseModule {}

class _$GoRouterModule extends _i18.GoRouterModule {}

class _$TalkerModule extends _i19.TalkerModule {}
