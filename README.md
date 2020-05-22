# disposable

A simple interface to manage disposable objects, their disposal and check their disposed status.

## Getting Started
Just make your disposable object `extend Disposable` and implement the `disposeInstance` override!

## Example
```dart
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

```