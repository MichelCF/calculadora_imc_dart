class Person {
  String _name = "";
  double _weight = 0.0;
  int _height = 0;
  Map<String, String> _person = {};

  Person(String name, double weight, int height) {
    try {
      if ((weight >= 0) & (height >= 0)) {
        _name = name;
        _weight = weight;
        _height = height;
        _person = {
          'name': _name,
          'weight': _weight.toString(),
          'height': _height.toString()
        };
      }
    } catch (e) {
      print("weight and height cannot be negative");
    }
  }
  String getName() {
    return _name;
  }

  double getWeight() {
    return _weight;
  }

  int getHeight() {
    return _height;
  }

  Map<String, String> getPerson() {
    return _person;
  }

  double _calculateIMC() {
    return _weight / (_height * _height);
  }

  String _rangeIMC(double imc_value) {
    if (imc_value < 16) {
      return 'Your IMC is ${imc_value}: severe thinness';
    } else if ((imc_value >= 16) | (imc_value < 17)) {
      return 'Your IMC is ${imc_value}: moderate thinness';
    } else if ((imc_value >= 17) | (imc_value < 18.5)) {
      return 'Your IMC is ${imc_value}: light thinness';
    } else if ((imc_value >= 18.5) | (imc_value < 25)) {
      return 'Your IMC is ${imc_value}: healthy';
    } else if ((imc_value >= 25) | (imc_value < 30)) {
      return 'Your IMC is ${imc_value}: overweight';
    } else if ((imc_value >= 30) | (imc_value < 35)) {
      return 'Your IMC is ${imc_value}: Grade I obesity';
    } else if ((imc_value >= 35) | (imc_value < 40)) {
      return 'Your IMC is ${imc_value}: Grade II obesity (severe)';
    } else if ((imc_value >= 40)) {
      return 'Your IMC is ${imc_value}: Grade III obesity (morbid)';
    }
    return "Invalid value";
  }

  String getResultIMC() {
    return _rangeIMC(_calculateIMC());
  }
}
