class Person {
  String _name = "";
  double _weight = 0.0;
  double _height = 0.0;
  Map<String, String> _person = {};

  Person(String name, double weight, double height) {
    if ((weight > 0) & (height > 0)) {
      _name = name;
      _weight = weight;
      _height = height;
      _person = {
        'name': _name,
        'weight': _weight.toString(),
        'height': _height.toString()
      };
    } else {
      throw ArgumentError("Height and weight cannot be less than 0.");
    }
  }
  String getName() {
    return _name;
  }

  double getWeight() {
    return _weight;
  }

  double getHeight() {
    return _height;
  }

  String getPerson() {
    return _person.toString();
  }

  double _calculateIMC() {
    return _weight / (_height * _height);
  }

  String _rangeIMC(double imc_value) {
    var imc_value_string = imc_value.toStringAsFixed(2);
    if (imc_value < 16) {
      return 'Your IMC is ${imc_value_string}: severe thinness';
    } else if ((imc_value >= 16) | (imc_value < 17)) {
      return 'Your IMC is ${imc_value_string}: moderate thinness';
    } else if ((imc_value >= 17) | (imc_value < 18.5)) {
      return 'Your IMC is ${imc_value_string}: light thinness';
    } else if ((imc_value >= 18.5) | (imc_value < 25)) {
      return 'Your IMC is ${imc_value_string}: healthy';
    } else if ((imc_value >= 25) | (imc_value < 30)) {
      return 'Your IMC is ${imc_value_string}: overweight';
    } else if ((imc_value >= 30) | (imc_value < 35)) {
      return 'Your IMC is ${imc_value_string}: Grade I obesity';
    } else if ((imc_value >= 35) | (imc_value < 40)) {
      return 'Your IMC is ${imc_value_string}: Grade II obesity (severe)';
    } else if ((imc_value >= 40)) {
      return 'Your IMC is ${imc_value_string}: Grade III obesity (morbid)';
    }
    return "Invalid value";
  }

  String getResultIMC() {
    return _rangeIMC(_calculateIMC());
  }
}
