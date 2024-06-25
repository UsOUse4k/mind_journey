import 'package:dartz/dartz.dart';
import 'package:medi_mind/features/auth/domain/auth_value_validators.dart';
import 'package:medi_mind/features/common/domain/failures.dart';
import 'package:medi_mind/features/common/domain/value_objects.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Email(String input) {
    return Email._(
      validateEmail(input),
    );
  }

  const Email._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
