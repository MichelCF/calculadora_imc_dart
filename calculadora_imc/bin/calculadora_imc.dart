import 'package:calculadora_imc/classes/person.dart';
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Enter your name:");
  String name = stdin.readLineSync(encoding: utf8) ?? "";
  print("Enter your weight:");
  String weight = stdin.readLineSync(encoding: utf8) ?? "";
  print("Enter your height:");
  String height = stdin.readLineSync(encoding: utf8) ?? "";
  if(name.isEmpty){
    print('Name cannot be empty');
  }
  else if(weight.isEmpty){
    print('Weight cannot be empty');
  }
  else if(height.isEmpty){
    print('Height cannot be empty');
  }
  else{
    var person = Person(name, double.parse(weight), double.parse(height));
    print(person.getResultIMC());
  }
}
