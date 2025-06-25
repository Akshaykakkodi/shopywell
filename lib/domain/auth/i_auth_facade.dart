import 'package:dartz/dartz.dart';
import 'package:shopywell/application/core/failures/failures.dart';

interface class IAuthFacade {
  Future<Either<MainFailure, Unit>> registerUser(String email,String password) {
    throw UnimplementedError();
  }
}
