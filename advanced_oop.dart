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

void main() {
  var dog = Dog();
  dog.eat();
  dog.bark();
}
