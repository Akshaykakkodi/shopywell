
import 'package:firebase_auth/firebase_auth.dart';

import 'package:injectable/injectable.dart';


@module
abstract class AppInjectionModule {
  // @preResolve
  // Future<SharedPreferences> getPref() async =>
  //     await SharedPreferences.getInstance();



  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
 
 
}
