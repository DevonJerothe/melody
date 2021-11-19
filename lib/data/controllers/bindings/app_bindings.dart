import 'package:get/get.dart';
import '../moods_controller.dart';
import '../auth_controller.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<MoodsController>(() => MoodsController());
  }
}
