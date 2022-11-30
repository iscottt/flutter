## 1.Dart环境配置
## 1.1 安装Dart SDK
### 1.1.1 下载Dart SDK

- Mac平台： brew install dart --devel
- Windows平台：choco install dart-sdk
- Linux平台：sudo apt-get install dart
- 或者直接下载[安装包](https://www.dartlang.org/install/archive)
> 安装完成后，可以通过命令行 dart --version 查看版本号
### 1.1.2 安装Dart插件
- [VSCode](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)
- [Android Studio](https://plugins.jetbrains.com/plugin/6351-dart)
- [IntelliJ IDEA](https://plugins.jetbrains.com/plugin/6351-dart)
- [Sublime Text](https://packagecontrol.io/packages/Dart)
- [Atom](https://atom.io/packages/dartlang)

## 2. Dart语言基础
### 2.1 Dart hello world
- main方法是固定的写法，是程序的入口
- print是打印的方法，可以在控制台打印出内容
- print('hello world')是打印的内容

```dart
void main() {
  print('hello world');
}
```
### 2.2 Dart变量
> Dart是强类型语言，变量必须要有类型，变量的类型是在编译时确定的，变量的类型一旦确定，就不能改变
> Dart中的变量分为两种：1.值类型 2.引用类型
- 值类型：int、double、bool、String、List、Map、Set
- 引用类型：类、接口、函数
- 变量未初始化时，值为null
- 值类型的变量在内存中占用固定的空间，而引用类型的变量在内存中占用的空间是不固定的，它的大小是根据它所引用的对象的大小来决定的
- 值类型的变量在内存中是存储的它的值，而引用类型的变量在内存中是存储的它所引用的对象的地址
- 值类型的变量是直接存储在栈中的是连续的，而引用类型的变量是存储在堆中的是不连续的，它的值是一个指针，指向它所引用的对象

> 语法：var 变量名 = 值;
```dart
void main() {
  var name = '张三';
  var age = 20;
  var height = 1.88;
  var flag = true;
  print(name);
  print(age);
  print(height);
  print(flag);
}
```
> 语法：数据类型 变量名 = 值;
```dart
void main() {
  String name = '张三';
  int age = 20;
  double height = 1.88;
  bool flag = true;
  print(name);
  print(age);
  print(height);
  print(flag);
}
```

### 2.3 Dart常量
> 常量是在编译时就确定下来的值，常量的值一旦确定，就不能改变

- final修饰的变量是常量，只能赋值一次
- const修饰的变量是常量，只能赋值一次，而且是编译时常量
- final和const的区别：const是编译时常量，final是运行时常量
```dart
void main() {
  final name = '张三';
  const age = 20;
  print(name);
  print(age);
}
```

### 2.4 Dart字符串
> Dart中的字符串有两种：1.单引号 2.双引号
```dart
void main() {
  String str1 = 'hello world';
  String str2 = "hello world";
  print(str1);
  print(str2);
}
```
> Dart中的字符串可以使用+号进行拼接
```dart
void main() {
  String str1 = 'hello';
  String str2 = 'world';
  String str3 = str1 + str2;
  print(str3);
}
```
> Dart中的字符串可以使用\$进行变量的拼接
```dart
void main() {
  String name = '张三';
  int age = 20;
  String str = '我的名字是$name, 我的年龄是$age';
  print(str);
}
```
> Dart中的字符串可以使用${}进行表达式的拼接
```dart
void main() {
  int a = 10;
  int b = 20;
  String str = 'a + b = ${a + b}';
  print(str);
}
```
> Dart中的字符串可以使用三个单引号或者三个双引号进行多行字符串的拼接
```dart
void main() {
  String str1 = '''
  hello
  world
  ''';
  String str2 = """
  hello
  world
  """;
  print(str1);
  print(str2);
}
```
> Dart中的字符串可以使用==进行字符串的比较
```dart
void main() {
  String str1 = 'hello';
  String str2 = 'world';
  print(str1 == str2);
}
```
> Dart中的字符串可以使用isEmpty和isNotEmpty进行判断字符串是否为空
```dart
void main() {
  String str1 = '';
  String str2 = 'hello';
  print(str1.isEmpty);
  print(str2.isNotEmpty);
}
```
> Dart中的字符串可以使用length进行获取字符串的长度
```dart
void main() {
  String str = 'hello world';
  print(str.length);
}
```
> Dart中的字符串可以使用contains进行判断字符串是否包含某个字符串
```dart
void main() {
  String str = 'hello world';
  print(str.contains('hello'));
}
```
> Dart中的字符串可以使用substring进行截取字符串
```dart
void main() {
  String str = 'hello world';
  print(str.substring(0, 5));
}
```
> Dart中的字符串可以使用split进行分割字符串
```dart
void main() {
  String str = 'hello world';
  print(str.split(' '));
}
```
> Dart中的字符串可以使用trim进行去除字符串两端的空格
```dart
void main() {
  String str = ' hello world ';
  print(str.trim());
}
```
> Dart中的字符串可以使用toLowerCase和toUpperCase进行字符串的大小写转换
```dart
void main() {
  String str = 'Hello World';
  print(str.toLowerCase());
  print(str.toUpperCase());
}
```
> Dart中的字符串可以使用*进行字符串的重复
```dart
void main() {
  String str = 'hello';
  print(str * 5);
}
```
### 2.5 Dart运算符
> Dart中的运算符分为：算术运算符、关系运算符、逻辑运算符、赋值运算符、条件运算符、类型运算符
> Dart中的算术运算符有：+、-、*、/、~/、%
```dart
void main() {
  int a = 10;
  int b = 3;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b);
  print(a % b);
}
```
> Dart中的关系运算符有：==、!=、>、<、>=、<=
```dart
void main() {
  int a = 10;
  int b = 3;
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);
}
```
> Dart中的逻辑运算符有：&&、||、!
```dart
void main() {
  bool flag1 = true;
  bool flag2 = false;
  print(flag1 && flag2);
  print(flag1 || flag2);
  print(!flag1);
}
```
> Dart中的赋值运算符有：=、+=、-=、*=、/=、~/=、%=、??=
```dart
void main() {
  int a = 10;
  a += 2;
  print(a);
  a -= 2;
  print(a);
  a *= 2;
  print(a);
  a /= 2;
  print(a);
  a ~/= 2;
  print(a);
  a %= 2;
  print(a);
  a ??= 2;
  print(a);
}
```
> Dart中的条件运算符有：?:、??、??=
```dart
void main() {
  int a = 10;
  int b = 3;
  int c = a > b ? a : b;
  print(c);
  int d = a ?? b;
  print(d);
  int e = null;
  int f = e ?? 100;
  print(f);
}
```
> Dart中的类型运算符有：as、is、is!
```dart
void main() {
  var a = 'hello';
  print(a is String);
  print(a is! int);
}
```





