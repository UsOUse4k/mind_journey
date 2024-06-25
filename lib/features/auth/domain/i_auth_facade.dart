import 'package:dartz/dartz.dart';
import 'package:medi_mind/features/auth/domain/auth_failure.dart';
import 'package:medi_mind/features/auth/domain/auth_value_objects.dart';
import 'package:medi_mind/features/auth/domain/user.dart';
import 'package:medi_mind/features/common/domain/value_objects.dart';

abstract class IAuthFacade {
  Stream<Option<User>> getUser();

  Future<Either<AuthFailure, Unit>> login({
    required Email email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> register({
    required NotEmptyString name,
    required NotEmptyString surname,
    required Email email,
    required Password password,
  });

  Future<void> logout();
}
