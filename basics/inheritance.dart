// 任何类都隐式继承自 object
class Runnable {
  void run() {
    print('${runtimeType.toString()}.run() -> ${toString()}');
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

class Task extends Runnable {
  int id;

  Task(this.id);

  @override
  void run() {
    super.run();
    print('id: $id');
  }
}

class DownloadTask extends Task {
  DownloadTask(super.id);
}

// 每一个类都被隐式定义为 interface
class SampleTask implements Runnable {
  @override
  void run() {
    // 这里不能调用 super.run();
    // super.run();
    print('$runtimeType.run()');
  }
}

void main() {
  var t = Task(20);
  t.run();

  var st = SampleTask();
  st.run();
}
