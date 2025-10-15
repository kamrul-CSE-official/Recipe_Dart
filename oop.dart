// ----------------------------------------
// OOP
// ----------------------------------------

// a) Classes, Objects & Constructors
class Person {
  late String name;
  late int age;

  void greet() {
    print("Hello, my name is $name and I'm $age years old.");
  }
}

class School {
  String name;
  int className;

  School(this.name, this.className);

  void schoolInfo() {
    print("You reading $name and class $className.");
  }
}

class Collage {
  String name;
  int year;

  Collage({required this.name, required this.year});
}

//   Encapsulation (Private variables)
class BankAccount {
  double _balance = 0; // privagte

  void deposit(double amount) {
    _balance += amount;
  }

  double get balance => _balance;
}

// Factory Constructor (Very useful for Flutter models)
class WifeInfo {
  String name;
  int age;
  String? village;

  WifeInfo({required this.name, required this.age, this.village = 'N/A'});

  factory WifeInfo.fromJson(Map<String, dynamic> json) {
    return WifeInfo(
      name: json['name'],
      age: json['age'],
      village: json['village'] ?? 'N/A',
    );
  }
}

// Static Members
class MathUtils {
  static const double pi = 3.1416;
  static int square(int x) => x * x;
  int age;
  MathUtils(this.age);

  void yourAge() => {print("Your age: $age")};
}

void main() {
  var p1 = Person();
  p1.name = "Kamrul";
  p1.age = 25;
  p1.greet();

  dynamic s1 = School('Iban Sina School', 10);
  s1.schoolInfo();

  var c1 = Collage(name: "Barrister Collage", year: 1);
  print("Collage name: ${c1.name} and year: ${c1.year}");
  //   This is exactly how most Flutter widgets are written: Text("Hello", style: TextStyle(fontSize: 20))

  var b = BankAccount();
  b.deposit(100);
  print(b._balance);

  var data = {'name': 'Lamia', 'age': 20};
  var w = WifeInfo.fromJson(data);
  print(w.name);

  print(MathUtils.pi);
  print(MathUtils.square(5));
  print(MathUtils(22).)
}
