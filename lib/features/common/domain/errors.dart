import 'package:medi_mind/features/common/domain/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        "Encountered a ValueFailure at an unrecoverable point. Terminating.";
    return Error.safeToString("$explanation Failure was: $valueFailure");
  }
}
