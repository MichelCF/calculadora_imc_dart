import 'package:calculadora_imc/classes/person.dart';

void main(List<String> arguments) {
  var m = Person('Michel', -1, 1.75);
  print(m.getResultIMC());
}
