import 'package:cocktail_app/core/failures/failure.dart';

/// Just implementation of [Failure].
/// Only used for testing.
class DefaultFailure extends Failure {
  const DefaultFailure({String message}): super(message: message);
}