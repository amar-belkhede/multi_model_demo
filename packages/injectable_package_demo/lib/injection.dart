import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_package_demo/injection.config.dart';

@InjectableInit(
  asExtension: false,
  preferRelativeImports: true,
  throwOnMissingDependencies: true,
)
void configureInjection(GetIt getIt, String environment) =>
    init(getIt, environment: environment);

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
  static const test = 'test';
}
