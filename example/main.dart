import 'dart:async';

import 'package:disposable_object/disposable_object.dart';

class MyDisposableObject extends DisposableObject {
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
