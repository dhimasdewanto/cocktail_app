import 'package:cocktail_app/core/failures/failure.dart';

class ServerFailure extends Failure {
  const ServerFailure({String message}): super(message: message);
}

class CharOnlyFailure extends Failure {
  const CharOnlyFailure({String message}): super(message: message);
}
