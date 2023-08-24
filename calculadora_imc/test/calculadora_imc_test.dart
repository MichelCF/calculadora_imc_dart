import 'package:test/test.dart';
import 'package:calculadora_imc/classes/person.dart';

void main() {
  group('All tests of the person class', () {
    late Person person01;
    setUp(() {
      person01 = Person("Michel", 95, 175);
    });
    test('test 1: constructor with all parameters', () {
      expect(person01.getName(), ('Michel'));
    });
  });
}
