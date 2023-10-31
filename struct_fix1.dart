import 'dart:ffi';

void main() {
  print(getStruct().ref);
}

@Native<Pointer<MyStruct> Function()>()
external Pointer<MyStruct> getStruct();

final class MyStruct extends Struct {
  @Int32()
  external int a;

  @Float()
  external double b;
}
