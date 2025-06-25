import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shopywell/application/core/failures/failures.dart';

@lazySingleton

class Register {
   final FirebaseAuth firebaseAuth;

  Register({required this.firebaseAuth});

  Future<Either<MainFailure,UserCredential>> call(String email,String password)async{
 try {
    var user=  await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left( MainFailure(message: "Email Already Used"));
      } else {
        return left(MainFailure(message:e.message??""));
      }
    }
  }
}