import 'dart:math' as math;

void main() {
  var flt = 3.14;
  print('float is $flt');
  var list = ['hello', 'world', 'world'];
  print('list is $list ');
  // set 自动去重
  var set = {'yoo', 'foo', 'foo'};
  print('set is $set');
  var map = {'hello': 'world', 'set': set, 'list': list, 'flt': flt};
  print('map is $map');

  print('pi is ${math.pi}');
}
