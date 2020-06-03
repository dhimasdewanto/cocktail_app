import 'package:dartz/dartz.dart';

import '../failures/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
  Future<Either<Failure, Unit>> validate(Params params);
}