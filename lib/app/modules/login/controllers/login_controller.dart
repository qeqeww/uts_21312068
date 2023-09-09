import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final cNpm = TextEditingController();
  final cNama = TextEditingController();
  final cAlamat = TextEditingController();
  final cProgram_studi = TextEditingController();
  final cJenis_kelamin = TextEditingController();

  @override
  void onClose() {
    cNpm.dispose();
    cNama.dispose();
    cAlamat.dispose();
    cProgram_studi.dispose();
    cJenis_kelamin.dispose();
    super.onClose();
  }
}
