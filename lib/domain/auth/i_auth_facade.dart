import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopywell/application/core/failures/failures.dart';

interface class IAuthFacade {
  Future<Either<MainFailure, UserCredential>> registerUser(String email,String password) {
    throw UnimplementedError();
  }

   Future<Either<MainFailure, UserCredential>> login(String email,String password) {
    throw UnimplementedError();
  }
}
