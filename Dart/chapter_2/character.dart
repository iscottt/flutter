
void main() {
  String str1 = 'hello world';
  String str2 = "hello world";
  print(str1); // hello world
  print(str2); // hello world
  StringMethods();
}
// 字符串拼接
void Splicing() {
  String str1 = 'hello';
  String str2 = 'world';
  String str3 = str1 + str2;
  print(str3); // helloworld
}
// 表达式拼接
void ExpressionSplicing() {
  String str1 = 'hello';
  String str2 = 'world';
  String str3 = '${str1 + str2}';
  print(str3); // helloworld
}
// 多行字符串
void MultiLineString() {
  String str1 = '''
  hello
  world
  ''';
  String str2 = """
  hello
  world
  """;
  print(str1); // hello world
  print(str2); // hello world
}
// 字符串常用属性
void StringProperties() {
  String str1 = 'hello world';
  print(str1.length); // 11
  print(str1.isEmpty); // false
  print(str1.isNotEmpty); // true
}
// 字符串常用方法
void StringMethods() {
  String str = 'hello world';
  print(str.length); // 11
  print(str.isEmpty); // false
  print(str.isNotEmpty); // true
  print(str.contains('hello')); // true
  print(str.startsWith('hello')); // true
  print(str.endsWith('world')); // true
  print(str.indexOf('l')); // 2
  print(str.lastIndexOf('l')); // 9
  print(str.substring(0, 5)); // hello
  print(str.split(' ')); // [hello, world]
  print(str.trim()); // hello world
  print(str.toLowerCase()); // hello world
  print(str.toUpperCase()); // HELLO WORLD
}
// 字符串转换
void StringConversion() {
  int a = 1;
  double b = 1.1;
  bool c = true;
  print(a.toString()); // 1
  print(b.toString()); // 1.1
  print(c.toString()); // true
}
// 字符串模板
void StringTemplate() {
  String name = '张三';
  int age = 20;
  String str = '姓名：$name，年龄：$age';
  print(str); // 姓名：张三，年龄：20
}
// 常用转义字符
void CommonEscapeCharacters() {
  String str1 = 'hello\nworld';
  String str2 = r'hello\nworld';
  print(str1); // hello world
  print(str2); // hello\nworld
}
