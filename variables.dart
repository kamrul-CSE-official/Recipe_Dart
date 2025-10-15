void main() {
  // ___________________________
  // 1. Variables and types
  // ___________________________

  // a) var
  // _______________
  var name = "MD.Kamrul Hasan";
  var age = 27;
  // var cannot change type after assignment.

  // b) final
  // _______________
  final pi = 3.14;
  final currentTime = DateTime.now(); // runtime value
  print(currentTime);

  // c) const
  // _______________
  const cgpa = 3.59;

  // d) int, double, String, bool, dynamic, num
  // _______________
  int age2 = 28;
  double price = 99.30;
  String name2 = "Flutter";
  bool isActive = true;
  dynamic taka = 100; // can change type later
  num houseNo = 10.2; // can be int or double

  print(
    name2 +
        name +
        age.toString() +
        age2.toString() +
        pi.toString() +
        cgpa.toString() +
        price.toString() +
        isActive.toString() +
        taka.toString() +
        houseNo.toString(),
  );

  // ___________________________
  // 2. Lists, Maps, Sets
  // ___________________________

  // a)Lists (like arrays)
  List<String> fruits = ["Apple", "Banana", "Orange"];
  fruits.add("Mango");
  print(fruits[1]);

  // b) Map (key & value)
  Map<String, String> user = {"name": "Kamrul", "city": "Dhaka"};
  print(user["name"]);

  // c) (unique items)
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(2); // ignored, because 2 already exists
  numbers.add(5);
  print(numbers);

  // ___________________________
  // 3. Functions
  // ___________________________

  // a) Positional parameters
  int add(int a, int b) {
    return a + b;
  }

  print(add(5, 10));

  // b) Named parameters
  int multiply({required int a, required int b}) {
    return a * b;
  }

  print(multiply(a: 20, b: 5));

  // c) Optional parameters
  String greet(String name, [String? message]) {
    return "Hello $name, ${message ?? 'Welcome!'}";
  }

  print(greet("Kamrul", "Good morning."));

  // d) Arrow function
  int square(int x) => x * x;
  print(square(10));

  // ___________________________
  // 4. Null Safety
  // ___________________________

  String motherName = "Shahena Akter"; //can't be null
  String? nickName; //Can be null
  nickName = "Hasan";
  // print(nickName ?? "No nickname"); // fallback
  print(nickName); // fallback
  print(motherName);

  String? nick;
  nick = 'Go';
  // print(nick!.length); //Error if will null
  print(nick); //Error if will null

  late String city;
  city = "Dhaka";
  city = "Chattogram";
  print(city);

  String sister = "Soniya";
  sister = "Farzena";
  print(sister);
}
