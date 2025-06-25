// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../infratstructure/auth/i_auth_facade_impl.dart' as _i160;
import '../../infratstructure/auth/register/register.dart' as _i1026;
import '../auth/i_auth_facade.dart' as _i950;
import 'app_injection_module.dart' as _i975;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final appInjectionModule = _$AppInjectionModule();
  gh.lazySingleton<_i59.FirebaseAuth>(() => appInjectionModule.firebaseAuth);
  gh.lazySingleton<_i1026.Register>(
    () => _i1026.Register(firebaseAuth: gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i950.IAuthFacade>(
    () => _i160.IAuthFacadeImpl(register: gh<_i1026.Register>()),
  );
  return getIt;
}

class _$AppInjectionModule extends _i975.AppInjectionModule {}
