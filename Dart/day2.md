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
