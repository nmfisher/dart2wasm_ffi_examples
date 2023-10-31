import 'dart:ffi' as ffi;

class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  void test(
    ffi.Pointer<ffi.Void> viewer,
  ) {
    return _test(
      viewer,
    );
  }

  late final _testPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'test');
  late final _test =
      _testPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();
}

late final ptr = ffi.Pointer<ffi.Void>.fromAddress(0);

void main() {
  var lib = NativeLibrary(ffi.DynamicLibrary.executable());
  lib.test(ptr);
}
