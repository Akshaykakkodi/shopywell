import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopywell/application/core/failures/failures.dart';
import 'package:shopywell/domain/auth/i_auth_facade.dart';
import 'package:shopywell/infratstructure/auth/register/register.dart';
@LazySingleton(as: IAuthFacade)
class IAuthFacadeImpl implements IAuthFacade {
  final Register register;

  IAuthFacadeImpl({required this.register});
  @override
  Future<Either<MainFailure, Unit>> registerUser(String email,String password)async {
   
   return await register.call(email, password);
  }
}