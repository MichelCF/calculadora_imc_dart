class Person {
  String _name = "";
  double _weight = 0.0;
  int _height = 0;
  Map<String, String> _person = {};

  Person(String name, double weight, int height) {
    _name = name;
    _weight = weight;
    _height = height;
    _person = {
      'name': _name,
      'weight': _weight.toString(),
      'height': _height.toString()
    };
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
}
