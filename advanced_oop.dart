// ----------------------------------------
// Advanced OOP
// ----------------------------------------

// a) Inheritance (extends)
class Animal {
  void eat() => print("Animal is eating");
}

class Dog extends Animal {
  void bark() => print("Dog is barking");
}

// b) Super
class Cat {
  String bark;

  Cat(this.bark);

  void info() => print("Cat dark: $bark");
}

class Says extends Cat {
  Says(String bark) : super(bark);

  void info() {
    super.info();
    print("This is a cat and it's bark $bark");
  }
}

class Father {
  String f_name;
  int f_age;

  Father(this.f_name, this.f_age);

  void f_intfo() => print("My father's name $f_name. He is $f_age years old.");
}

class Son extends Father {
  String s_name;
  int s_age;

  Son(this.s_name, this.s_age, super.f_name, super.f_age);

  void s_info() {
    print("My name is $s_name. I'm $s_age years old.");
    super.f_intfo();
  }
}

// c) Polymorphism (@override)
class Shape {
  void draw() => print("Drawing shpe...");
}

class Circle extends Shape {
  @override //in dart it's optional
  void draw() => print("This is circle...");
}

// d) Abstract Class
abstract class Vehicle {
  void start();
}

class Car extends Vehicle {
  @override
  void start() => print("Car is started.");
}

class Bike extends Vehicle {
  @override
  void start() => print("Bike started.");
}

// e) Interfaces (implements)

void main() {
  var dog = Dog();
  dog.eat();
  dog.bark();

  var cat = Cat("Mew Mew");
  cat.info();

  var my = Son("MD.Kamrul Hasan", 27, "Maksudur Rahman", 60);
  my.s_info();

  var sha = Shape();
  sha.draw();

  var cir = Circle();
  cir.draw();

  Vehicle v = Car();
  v.start();
}
