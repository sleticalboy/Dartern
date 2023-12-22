import 'dart:io';

void main() {
  printFile('README.md');
  printFile('README.mdd');
}

void printFile(String path) {
  try {
    var fp = File(path);
    var text = fp.readAsStringSync();
    print(text);
  } on IOException catch (e) {
    print(e);
  }
}