
abstract class AbsRequest {
  // 抽象类的抽象方法
  void build();

  String method();

  // 抽象类的普通方法
  String url() {
    return 'null';
  }

  @override
  String toString() {
    return runtimeType.toString();
  }
}

class GetRequest extends AbsRequest {
  @override
  void build() {
    print('${toString()}.build() -> ${method()} -> ${url()}');
  }

  @override
  String method() {
    return 'GET';
  }
}

class PutRequest implements AbsRequest {
  @override
  void build() {
    print('${toString()}.build() -> ${method()} -> ${url()}');
  }

  @override
  String method() {
    return 'PUT';
  }

  @override
  String url() {
    return 'https://sample.com/api/v1/update';
  }
}

void main() {
  var get = GetRequest();
  get.build();

  var put = PutRequest();
  put.build();
}