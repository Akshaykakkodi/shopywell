// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;


import '../../infratstructure/auth/i_auth_facade_impl.dart' as _i160;
import '../../infratstructure/auth/login/login.dart' as _i20;
import '../../infratstructure/auth/register/register.dart' as _i1026;
import '../../infratstructure/product/get_products/get_products.dart' as _i631;
import '../../infratstructure/product/i_product_facade_impl.dart' as _i906;
import '../auth/i_auth_facade.dart' as _i950;
import '../product/i_product_facade.dart' as _i42;
import 'app_injection_module.dart' as _i975;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final appInjectionModule = _$AppInjectionModule();

  gh.lazySingleton<_i59.FirebaseAuth>(() => appInjectionModule.firebaseAuth);
  gh.lazySingleton<_i974.FirebaseFirestore>(() => appInjectionModule.firestore);
  gh.lazySingleton<_i631.GetProducts>(
    () => _i631.GetProducts(firestore: gh<_i974.FirebaseFirestore>()),
  );
  gh.lazySingleton<_i20.Login>(
    () => _i20.Login(firebaseAuth: gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i1026.Register>(
    () => _i1026.Register(firebaseAuth: gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i42.IProductFacade>(
    () => _i906.IProductFacadeImpl(getProductsCase: gh<_i631.GetProducts>()),
  );
  gh.lazySingleton<_i950.IAuthFacade>(
    () => _i160.IAuthFacadeImpl(
      gh<_i20.Login>(),
      register: gh<_i1026.Register>(),
    ),
  );
  return getIt;
}

class _$AppInjectionModule extends _i975.AppInjectionModule {}
