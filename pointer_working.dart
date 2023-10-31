import 'dart:ffi';

@AbiSpecificIntegerMapping({
  Abi.androidArm: Uint8(),
  Abi.androidArm64: Uint8(),
  Abi.androidIA32: Int8(),
  Abi.androidX64: Int8(),
  Abi.androidRiscv64: Uint8(),
  Abi.fuchsiaArm64: Uint8(),
  Abi.fuchsiaX64: Int8(),
  Abi.fuchsiaRiscv64: Uint8(),
  Abi.iosArm: Int8(),
  Abi.iosArm64: Int8(),
  Abi.iosX64: Int8(),
  Abi.linuxArm: Uint8(),
  Abi.linuxArm64: Uint8(),
  Abi.linuxIA32: Int8(),
  Abi.linuxX64: Int8(),
  Abi.linuxRiscv32: Uint8(),
  Abi.linuxRiscv64: Uint8(),
  Abi.macosArm64: Int8(),
  Abi.macosX64: Int8(),
  Abi.windowsArm64: Int8(),
  Abi.windowsIA32: Int8(),
  Abi.windowsX64: Int8(),
})
final class Dummy extends AbiSpecificInteger {
  const Dummy();
}

void main() {
  var dummy = Dummy();
  print(Pointer<Char>.fromAddress(0));
}
