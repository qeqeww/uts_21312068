import 'package:get/get.dart';

import '../controllers/updatde_product_controller.dart';

class UpdatdeProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateProductController>(
      () => UpdateProductController(),
    );
  }
}
