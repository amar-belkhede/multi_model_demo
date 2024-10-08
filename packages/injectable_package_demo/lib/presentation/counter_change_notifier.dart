import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_package_demo/domain/i_counter_repository.dart';

@injectable
class CounterChangeNotifier extends ChangeNotifier {
  final ICounterRepository _counterRepository;
  CounterChangeNotifier(this._counterRepository);
  int _value = 0;
  int get value => _value;

  void increment() {
    _value += _counterRepository.getIncrement();
    notifyListeners();
  }

  void decrement() {
    _value += _counterRepository.getDecrement();
    notifyListeners();
  }
}
