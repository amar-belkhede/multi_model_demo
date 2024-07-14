import 'package:injectable/injectable.dart';
import 'package:injectable_package_demo/domain/i_counter_repository.dart';
import 'package:injectable_package_demo/injection.dart';

// @injectable
@Injectable(as: ICounterRepository, env: [Env.prod])
class CounterRepository implements ICounterRepository {
  @override
  int getIncrement() => 1;

  @override
  int getDecrement() {
    return -1;
  }
}
