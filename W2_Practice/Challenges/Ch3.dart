class Person {
  String firstName;
  String lastName;

  Person({required this.firstName, required this.lastName});

  String get fullName => firstName + ' ' + lastName;
}

void main() {
  Person person1 = Person(firstName: 'Mony', lastName: 'Oudom');
  print('My full name is ${person1.fullName}.');
}
