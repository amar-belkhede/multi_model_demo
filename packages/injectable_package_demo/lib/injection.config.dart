// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/i_counter_repository.dart' as _i3;
import 'infrastructure/counter_repository.dart' as _i5;
import 'infrastructure/dev_counter_repository.dart' as _i4;
import 'presentation/counter_change_notifier.dart' as _i6;

const String _dev = 'dev';
const String _prod = 'prod';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ICounterRepository>(
    () => _i4.DevCounterRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i3.ICounterRepository>(
    () => _i5.CounterRepository(),
    registerFor: {_prod},
  );
  gh.factory<_i6.CounterChangeNotifier>(
      () => _i6.CounterChangeNotifier(gh<_i3.ICounterRepository>()));
  return getIt;
}
