enum Skill { FLUTTER, DART, OTHER }

class Address {
  final String street;
  final String city;
  final String zipCode;

  Address(this.street, this.city, this.zipCode);
}

class Employee {
  String _name;
  double _baseSalary;
  List<Skill> _skills;
  Address _address;
  int _yearsOfExperience;

  Employee(
    this._name,
    this._baseSalary,
    this._skills,
    this._address,
    this._yearsOfExperience,
  );

  Employee.mobileDeveloper(String name, Address address, int years)
    : _name = name,
      _baseSalary = 40000,
      _skills = [Skill.FLUTTER, Skill.DART],
      _address = address,
      _yearsOfExperience = years;

  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  double computeSalary() {
    double salary = _baseSalary + (_yearsOfExperience * 2000);
    for (final skill in _skills) {
      if (skill == Skill.FLUTTER)
        salary += 5000;
      else if (skill == Skill.DART)
        salary += 3000;
      else
        salary += 1000;
    }
    return salary;
  }

  void printDetails() {
    print('Employee: $_name, Salary: \$${computeSalary()}');
  }
}

void main() {
  var emp1 = Employee(
    'Oudom',
    100000,
    [Skill.FLUTTER],
    Address('007 Street', 'Phnom Penh', '12000'),
    3,
  );
  emp1.printDetails();
}
