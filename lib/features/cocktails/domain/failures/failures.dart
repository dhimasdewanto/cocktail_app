import 'package:cocktail_app/core/failures/failure.dart';

/// Failed to get data from server failure.
class ServerFailure extends Failure {
  const ServerFailure({String message}): super(message: message);
}

/// [letter.length != 1] failure.
class CharOnlyFailure extends Failure {
  const CharOnlyFailure({String message}): super(message: message);
}

/// Data from source not found failure.
class NotFoundFailure extends Failure {
  const NotFoundFailure({String message}): super(message: message);
}

/// [SearchTextEmptyFailure] failure.
class SearchTextEmptyFailure extends Failure {
  const SearchTextEmptyFailure({String message}): super(message: message);
}
