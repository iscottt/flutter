/**
 * main
 * main 用于定义入口函数
 * main 用于定义入口函数，返回值为 void
 * main 用于定义入口函数，返回值为 void，可以使用 async
 */
void main() {
  Assert();
}

/**
 * if else
 * if else 用于条件判断
 */
void IfElse() {
  int score = 60;
  if (score >= 90) {
    print('优秀');
  } else if (score >= 80) {
    print('良好');
  } else if (score >= 60) {
    print('及格');
  } else {
    print('不及格');
  }
}

/**
 * switch case
 * switch case 用于条件判断，支持 int、String、编译时常量等
 */
void SwitchCase() {
  int score = 60;
  switch (score) {
    case 90:
      print('优秀');
      break;
    case 80:
      print('良好');
      break;
    case 60:
      print('及格');
      break;
    default:
      print('不及格');
  }
}

// for 循环
void ForLoop() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }
}

/**
 * while 循环
 * while循环先判断条件是否成立，如果成立，就执行循环体
 * 然后再判断条件是否成立，如果成立，就再次执行循环体
 * 以此类推，直到条件不成立，循环结束。
 */
void WhileLoop() {
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
  }
}

/**
 * do while 循环
 * 1.先执行循环体，再判断条件
 * 2.循环体至少会执行一次
 * 3.循环体中要注意不要出现死循环
 */
void DoWhileLoop() {
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 10);
}

/**
 * break
 * break 语句用于跳出循环。
 */
void BreakLoop() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
}

/**
 * continue
 * continue 用于跳过本次循环，继续下一次循环
 * continue 不能单独使用，必须配合循环使用
 */
void ContinueLoop() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}

/**
 * for in 循环
 * 1. for in 循环可以遍历任何对象的 Iterable 属性
 * 2. for in 循环可以遍历任何实现了 Iterable 接口的对象
 */
void ForInLoop() {
  List list = [1, 2, 3, 4, 5];
  for (var item in list) {
    print(item);
  }
}

/**
 * forEach 方法是 Iterable 类的一个方法，它的作用是对集合中的每个元素执行指定的操作
 * 它的参数是一个函数，这个函数的作用是对集合中的每个元素执行的操作
 */
void ForEachLoop() {
  List list = [1, 2, 3, 4, 5];
  list.forEach((item) {
    print(item);
  });
}


/**
 * label 用于标记循环，配合 break 和 continue 使用
 */
void LabelLoop() {
  outerLoop:
  for (int i = 0; i < 5; i++) {
    innerLoop:
    for (int j = 0; j < 5; j++) {
      if (j == 2) {
        break outerLoop;
      }
      print(j);
    }
  }
}

/**
 * assert
 * assert 用于判断表达式是否为 true，如果为 false，则抛出异常
 * assert 用于调试，不会影响程序的正常执行
 */
void Assert() {
  int score = 60;
  assert(score >= 60);
  print('passed assert');
}

/**
 * throw
 * throw 用于抛出异常
 * throw 用于自定义异常
 */
void Throw() {
  int score = 60;
  if (score < 60) {
    throw Exception('分数不能小于60');
  }
  print('throw');
}

/**
 * try catch finally
 * try catch finally 用于捕获异常
 * try catch finally 用于自定义异常
 * finally 用于释放资源
 */
void TryCatchFinally() {
  try {
    int score = 60;
    if (score < 60) {
      throw Exception('分数不能小于60');
    }
    print('try');
  } catch (e) {
    print(e);
  } finally {
    print('finally');
  }
}

/**
 * rethrow 用于重新抛出异常
 */
void Rethrow() {
  try {
    int score = 60;
    if (score < 60) {
      throw Exception('分数不能小于60');
    }
    print('try');
  } catch (e) {
    print(e);
    rethrow;
  } finally {
    print('finally');
  }
}

/**
 * async await 用于异步编程
 */
void AsyncAwait() async {
  print('start');
  await Future.delayed(Duration(seconds: 2), () {
    print('async await');
  });
  print('end');
}

/**
 * yield
 * yield 用于定义生成器函数
 * yield 用于定义生成器函数，返回值为 Iterable
 * yield 用于定义生成器函数，返回值为 Iterable，可以使用 yield
 */
Iterable Yield() sync* {
  yield 1;
  yield 2;
  yield 3;
}
