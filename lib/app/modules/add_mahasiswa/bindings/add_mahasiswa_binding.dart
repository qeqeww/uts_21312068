import 'package:get/get.dart';
import 'package:projek_get/app/modules/add_mahasiswa/views/add_mahasiswa_view.dart';

import '../controllers/add_mahasiswa_controller.dart';

class AddmahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddmahasiswaController>(
      () => AddmahasiswaController(),
    );
  }
}
