## 2. Dart语言基础

### 2.7 Dart函数
> Dart中的函数分为：无参函数、有参函数、可选参数、默认参数、匿名函数、箭头函数、闭包

**Dart中的无参函数**
```dart
void main() {
  printPerson();
}
void printPerson() {
  print('张三');
}
```
**Dart中的有参函数**
```dart
void main() {
  printPerson('张三', 20);
}
void printPerson(String name, int age) {
  print('$name $age');
}
```
**Dart中的位置可选参数**
```dart
void main() {
  printPerson('张三', 20);
  printPerson('张三');
}
void printPerson(String name, [int age]) {
  print('$name $age');
}
```
**Dart中的命名可选参数**
```dart
void main() {
  printPerson('张三', age: 20);
  printPerson('张三');
}
void printPerson(String name, {int age}) {
  print('$name $age');
}
```
**Dart中的默认参数**
```dart
void main() {
  printPerson('张三', 20);
  printPerson('张三');
}
void printPerson(String name, [int age = 18]) {
  print('$name $age');
}
```
**Dart中的匿名函数**
```dart
void main() {
  var list = ['香蕉', '苹果', '西瓜'];
  list.forEach((value) {
    print(value);
  });
}
```
**Dart中的箭头函数**
```dart
void main() {
  var list = ['香蕉', '苹果', '西瓜'];
  list.forEach((value) => print(value));
}
```
**Dart中的闭包**
```dart
void main() {
  Function func = a();
  func();
  func();
  func();
}
Function a() {
  int count = 0;
  printCount() {
    print(count++);
  }
  return printCount;
}
```
**Dart中的递归函数**
```dart
void main() {
  print(sum(100));
}
int sum(int num) {
  if (num == 1) {
    return 1;
  }
  return num + sum(num - 1);
}
```
**Dart中的函数作为参数**
```dart
void main() {
  print(sum(10, 20));
  print(sum(10, 20, printNum));
}
int sum(int num1, int num2, [Function printNum]) {
  if (printNum != null) {
    printNum(num1);
    printNum(num2);
  }
  return num1 + num2;
}
void printNum(int num) {
  print(num);
}
```
**Dart中的函数作为参数传递**
```dart
void main() {
  List list = [1, 2, 3, 4, 5];
  print(listWhere(list, isEven));
}
bool isEven(int num) {
  return num % 2 == 0;
}
List listWhere(List list, Function f) {
  List newList = [];
  for (var value in list) {
    if (f(value)) {
      newList.add(value);
    }
  }
  return newList;
}
```
**Dart中的函数类型**
```dart
void main() {
  print(sum(10, 20));
  print(sum(10, 20, printNum));
}
int sum(int num1, int num2, [Function printNum]) {
  if (printNum != null) {
    printNum(num1);
    printNum(num2);
  }
  return num1 + num2;
}
void printNum(int num) {
  print(num);
}
```
### 2.8 Dart中的类
**Dart中的类**
```dart
void main() {
  Person p = new Person();
  p.name = '张三';
  p.age = 20;
  p.printInfo();
}
class Person {
  String name;
  int age;
  void printInfo() {
    print('$name $age');
  }
}
```
**Dart中的构造函数**
```dart
void main() {
  Person p = new Person('张三', 20);
  p.printInfo();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printInfo() {
    print('$name $age');
  }
}
```
**Dart中的命名构造函数**
```dart
void main() {
  Person p = new Person('张三', 20);
  p.printInfo();
  Person p1 = new Person.now();
  p1.printInfo();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  Person.now() {
    this.name = '李四';
    this.age = 30;
  }
  void printInfo() {
    print('$name $age');
  }
}
```
**Dart中的初始化列表**
```dart
void main() {
  Person p = new Person('张三', 20);
  p.printInfo();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  Person.now() : this('李四', 30);
  void printInfo() {
    print('$name $age');
  }
}
```
**Dart中的常量构造函数**
```dart
void main() {
  Person p = new Person('张三', 20);
  p.printInfo();
}
class Person {
  final String name;
  final int age;
  const Person(this.name, this.age);
  void printInfo() {
    print('$name $age');
  }
}
```
**Dart中的工厂构造函数**
```dart
void main() {
  Person p = new Person('张三', 20);
  p.printInfo();
}
class Person {
  final String name;
  final int age;
  const Person(this.name, this.age);
  factory Person.now() {
    return new Person('李四', 30);
  }
  void printInfo() {
    print('$name $age');
  }
}
```
**Dart中的类的继承**
```dart
void main() {
  Student s = new Student();
  s.name = '张三';
  s.age = 20;
  s.printInfo();
}
class Person {
  String name;
  int age;
  void printInfo() {
    print('$name $age');
  }
}
class Student extends Person {}
```
**Dart中的类的继承构造函数**
```dart
void main() {
  Student s = new Student('张三', 20);
  s.printInfo();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printInfo() {
    print('$name $age');
  }
}
class Student extends Person {
  Student(String name, int age) : super(name, age);
}
```
**Dart中的类的继承重写方法**
```dart
void main() {
  Student s = new Student('张三', 20);
  s.printInfo();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printInfo() {
    print('$name $age');
  }
}
class Student extends Person {
  Student(String name, int age) : super(name, age);
  @override
  void printInfo() {
    print('name: $name age: $age');
  }
}
```

### 2.9 Dart中的抽象类
**Dart中的抽象类**
```dart
void main() {
  // Person p = new Person();
  Student s = new Student();
  s.run();
}
abstract class Person {
  void run();
}
class Student extends Person {
  @override
  void run() {
    print('run');
  }
}
```
**Dart中的抽象类的抽象方法**
```dart
void main() {
  // Person p = new Person();
  Student s = new Student();
  s.run();
}
abstract class Person {
  void run();
}
class Student extends Person {
  @override
  void run() {
    print('run');
  }
}
```
**Dart中的抽象类的抽象方法的实现**
```dart
void main() {
  // Person p = new Person();
  Student s = new Student();
  s.run();
}
abstract class Person {
  void run();
}
class Student extends Person {
  @override
  void run() {
    print('run');
  }
}
```
### 2.10 Dart中的接口
**Dart中的接口**
```dart
void main() {
  // Person p = new Person();
  Student s = new Student();
  s.run();
}
abstract class Person {
  void run();
}
class Student extends Person {
  @override
  void run() {
    print('run');
  }
}
```
