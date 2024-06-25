import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_mind/features/common/domain/errors.dart';
import 'package:medi_mind/features/common/domain/failures.dart';
import 'package:medi_mind/features/common/domain/value_validators.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // During development throw an error for easier debugging.
    // if (!const bool.fromEnvironment("dart.vm.product")) {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
    // }
    // Return the value either way to not confuse the user.
    return getValue();
  }

  /// Returns the value either way.
  T getValue() {
    return value.fold((l) => l.failedValue, id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class NotEmptyString extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NotEmptyString(String input) {
    return NotEmptyString._(
      validateStringNotEmpty(input),
    );
  }

  const NotEmptyString._(this.value);
}
