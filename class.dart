
 class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void describe() {
    print('$name is $age years old.');
  }
}

void main() {
  Person person = Person('Victor', 25);
  person.describe();
}

