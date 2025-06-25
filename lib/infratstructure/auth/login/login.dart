import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shopywell/application/core/failures/failures.dart';

@lazySingleton

class Login {
   final FirebaseAuth firebaseAuth;

  Login({required this.firebaseAuth});

  Future<Either<MainFailure,UserCredential>> call(String email,String password)async{
 try {
    final user = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return right(user);
  } on FirebaseAuthException catch (e) {
    return left(MainFailure(message: e.message ?? "Something went wrong"));
  } catch (e) {
    return left(MainFailure(message: "Unexpected error: ${e.toString()}"));
  }
  }
}