import 'package:test/test.dart';
import 'package:calculadora_imc/classes/person.dart';

void main() {
  group('All tests of the person class', () {
    late Person person01;
    setUp(() {
      person01 = Person("Michel", 95, 1.75);
    });
    test('test 1: Checks that the person was created correctly', () {
      expect(
          person01.getPerson(), ('{name: Michel, weight: 95.0, height: 1.75}'));
    });
    test('test 2: Validating getResultIMC function', () {
      expect(person01.getResultIMC(), ('Your IMC is 31.02: moderate thinness'));
    });
    test('test 3: Cannot receive a weight less than or equal to zero', () {
      expect(
          () => Person('Michel', 0, 1),
          throwsA(predicate((e) =>
              e is ArgumentError &&
              e.message == 'Weight and weight cannot be less than 0.')));
    });
    test('test 4: Cannot receive a height less than or equal to zero', () {
      expect(
          () => Person('Michel', 1, 0),
          throwsA(predicate((e) =>
              e is ArgumentError &&
              e.message == 'Height and weight cannot be less than 0.')));
    });
  });
}
