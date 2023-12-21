class Person {
  // 不能为 null
  String name;
  // 可以为 null
  DateTime? birthday;
  // 只读属性
  int? get birthYear => birthday?.year;

  Person(this.name, this.birthday) {}

  // 构造器不能重载，但是可以通过起别名的方式
  // Person(this.name) : this(name, null);
  Person.nobirth(String name) : this(name, null);

  void sayHello() {
    print('my name is $name, my birthday is $birthday');
  }
}

void main() {
  // var p = Person('ben', null);
  var p = Person.nobirth('ben');
  if (p.birthYear == null) {
    p = Person('ben', DateTime(1994, 10, 15));
  }
  print('p $p, type: ${p.runtimeType}, birthYear: ${p.birthYear}');
  p.sayHello();
}
