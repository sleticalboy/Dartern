void main() {
  var year = 79;
  if (year <= 14) {
    print('儿童');
  } else if (year <= 30) {
    print('青年');
  } else if (year <= 50) {
    print('壮年');
  } else {
    print('老年');
  }

  for (var i = 1; i <= 12; i++) {
    print('month $i');
  }

  var list = ['one', 'two', 'three'];
  for (var it in list) {
    print(it);
  }

  var num = 10;
  while (num > 0) {
    print(num);
    num--;
  }
}
