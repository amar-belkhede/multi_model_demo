import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable_package_demo/domain/i_counter_repository.dart';

import 'package:injectable_package_demo/injection.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'injectable_package_demo_test.mocks.dart';

class CounterRepository extends Mock implements ICounterRepository {}

@GenerateMocks([CounterRepository])
void main() {
  test(
    "should do something",
    () async {
      // arrange
      final mockCounterRepository = MockCounterRepository();
      when(mockCounterRepository.getIncrement()).thenReturn(123);
      // act
      // TODO: Some action here
      final actual = mockCounterRepository.getIncrement();

      // assert
      expect(actual, 123);
      verify(mockCounterRepository.getIncrement()).called(1);
    },
  );
}
