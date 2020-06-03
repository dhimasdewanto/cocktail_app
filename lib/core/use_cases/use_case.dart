import 'package:dartz/dartz.dart';

import '../failures/failure.dart';

/// Interface of use case.
/// Implement this to create use case.
/// 
/// [Type] is return type.
/// 
/// [Params] is parameter type. Use [Unit] to set empty parameter.
/// 
/// [call] is to get or send data to repository.
/// 
/// [validate] is to validate parameter, but doesn't interact with repository.
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
  Future<Either<Failure, Unit>> validate(Params params);
}