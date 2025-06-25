import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shopywell/application/core/failures/failures.dart';
import 'package:shopywell/domain/auth/i_auth_facade.dart';
import 'package:shopywell/infratstructure/auth/login/login.dart';
import 'package:shopywell/infratstructure/auth/register/register.dart';
@LazySingleton(as: IAuthFacade)
class IAuthFacadeImpl implements IAuthFacade {
  final Register register;
  final Login loginCase;

  IAuthFacadeImpl(this.loginCase, {required this.register});
  @override
  Future<Either<MainFailure, UserCredential>> registerUser(String email,String password)async {
   
   return await register.call(email, password);
  }
  
  @override
  Future<Either<MainFailure, UserCredential>> login(String email, String password)async {
    
   return await loginCase.call(email, password);
  }
}