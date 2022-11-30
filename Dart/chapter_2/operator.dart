// 算术运算符
void main() {
  CascadeOperator();
}
// 关系运算符
void Relational() {
  int a = 10;
  int b = 3;
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);
  print(a == b);
  print(a != b);
}
// 逻辑运算符
void logic() {
  bool flag1 = true;
  bool flag2 = false;
  print(flag1 && flag2);
  print(flag1 || flag2);
  print(!flag1);
}
// 赋值运算符
void Assignment() {
  int a = 10;
  int b = 3;
  a += b;
  print(a); // 13
  a -= b;
  print(a); // 10
  a *= b;
  print(a); // 30
  // a /= b;
  print(a); // 10
  a ~/= b;
  print(a); // 3
  a %= b;
  print(a); // 1
}
// 类型判断
void TypeJudgment() {
  int a = 10;
  String b = 'hello';
  print(a is int);
  print(b is! int);
}
// 类型转换
void TypeConversion() {
  int a = 10;
  String b = '10';
  print(a.toString());
  print(int.parse(b));
  print(double.parse(b));
}
// 运算符优先级
void OperatorPriority() {
  int a = 10;
  int b = 3;
  int c = 4;
  print(a + b * c); // 22
  print((a + b) * c); // 52
}
// 位运算符
void BitwiseOperator() {
  int a = 2; // 10
  int b = 3; // 11
  print(a & b); // 2
  print(a | b); // 3
  print(a ^ b); // 1
  print(~a); // -3
  print(a << 1); // 4
  print(a >> 1); // 1
}
// 条件运算符
void ConditionalOperator() {
  int a = 10;
  int b = 3;
  int max = a > b ? a : b;
  print(max); // 10
}
// 级联运算符
void CascadeOperator() {
  Person p = Person();
  p.name = '张三';
  p.age = 20;
  p.run();
}
class Person {
  String name = '';
  int age = 0;
  void run() {
    print('run $name $age');
    // run 张三 20
  }
}
// ?:、??、??=运算符
void ConditionalNullCoalescing() {
  // int a = 10;
  // int b = 3;
  // int c = a > b ? a : b;
  // print(c); // 10
  // int d = a ?? b;
  // print(d); // 10
  // int e = null;
  // int f = e ?? 100;
  // print(f); // 100
}
