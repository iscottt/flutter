void main (){

}

/**
 * 有参函数
 */
void test1(String name, int age) {
  print(name);
  print(age);
}

/**
 * 无参函数
 */
void test2() {
  print('test2');
}

/**
 * 有返回值函数
 */
String test3() {
  return 'test3';
}

/**
 * 有参有返回值函数
 */
String test4(String name, int age) {
  return 'name=$name, age=$age';
}

/**
 * 箭头函数
 */
void ArrowFunction() => print('test5');

/**
 * 可选参数
 */
void OptionalParameters(String name, [int? age, double? height]) {
  print('name=$name, age=$age, height=$height');
}

/**
 * 命名参数
 */
void NamedParameters(String name, {int? age, double? height}) {
  print('name=$name, age=$age, height=$height');
}

/**
 * 默认参数
 */
void DefaultParameters(String name, {int age = 20, double height = 1.88}) {
  print('name=$name, age=$age, height=$height');
}

/**
 * 匿名函数
 */
void AnonymousFunction() {
  var list = ['香蕉', '苹果', '西瓜'];
  list.forEach((value) {
    print(value);
  });
}

/**
 * 闭包
 */
void Closure() {
  Function makeAdder(int addBy) {
    return (int i) => addBy + i;
  }
  var add2 = makeAdder(2);
  var add4 = makeAdder(4);
  print(add2(3)); // 5
  print(add4(3)); // 7
}

/**
 * 递归函数
 */
int Factorial(int n) {
  if (n <= 0) {
    return 1;
  } else {
    return n * Factorial(n - 1);
  }
}

/**
 * 尾递归优化
 */
int Factorial2(int n, [int result = 1]) {
  if (n <= 0) {
    return result;
  } else {
    return Factorial2(n - 1, n * result);
  }
}
