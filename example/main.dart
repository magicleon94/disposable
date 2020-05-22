import 'dart:async';

import 'package:disposable/disposable.dart';

class MyDisposableObject extends Disposable {
  final streamController = StreamController.broadcast();
  @override
  void disposeInstance() {
    streamController.close();
  }
}

void main() {
  final object = MyDisposableObject();
  print('Stream closed: ${object.streamController.isClosed}');
  print('Object disposed: ${object.disposed}');

  object.dispose();

  print('Stream closed: ${object.streamController.isClosed}');
  print('Object disposed: ${object.disposed}');
}
