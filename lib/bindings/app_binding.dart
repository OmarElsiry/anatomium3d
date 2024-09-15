import 'package:get/get.dart';
import '../controllers/o3d_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(O3DController());
  }
}
