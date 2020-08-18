library disposable_object;

import 'package:meta/meta.dart';

abstract class DisposableObject {
  bool _disposed = false;

  ///[disposed] will be true if this object was disposed
  bool get disposed => _disposed;

  ///Override this method to provide dispose logic for the concrete object.
  @protected
  void disposeInstance();

  ///call [dispose] to dispose the object and mark it as disposed
  void dispose() {
    disposeInstance();
    _markDisposed();
  }

  void _markDisposed() {
    _disposed = true;
  }
}
