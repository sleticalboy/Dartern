import 'dart:io';

const oneSec = Duration(milliseconds: 100);

Future<void> delayPrint(Object? obj) async {
  await Future.delayed(oneSec);
  print(obj);
}

void delayPrint2(Object? obj) {
  Future.delayed(oneSec).then((_) => print(obj));
}

Future<String> readFile(String path) async {
  var fp = File(path);
  return await fp.readAsString();
}

Stream<String> buildStreams() async* {
  for (var i = 0; i < 20; i++) {
    await Future.delayed(oneSec);
    yield 'line -> $i';
  }
}

void main() {
  delayPrint('hello async').then((value) => {});
  delayPrint2('hello way 2');

  readFile('README.md').then((value) => print(value));
  readFile('pubspec.yaml').then((value) => print(value));

  buildStreams().forEach((element) {
    // 间隔 0.1s 打印一次
    print(element);
  });
}
