import 'package:get/get.dart';
import 'package:o3d/o3d.dart' as o3d;  // Import with a prefix

class O3DController extends GetxController {
  late o3d.O3DController o3dController;  // Use the prefixed O3DController
  var cameraTarget = o3d.CameraTarget(0, 1.8, 0).obs;
  var cameraOrbit = o3d.CameraOrbit(0, 90, 1.5).obs;

  @override
  void onInit() {
    o3dController = o3d.O3DController();
    super.onInit();
  }

  void updateCameraPosition(double x, double y, double z) {
    cameraTarget.value = o3d.CameraTarget(x, y, z);
  }

  void updateCameraOrbit(double x, double y, double z) {
    cameraOrbit.value = o3d.CameraOrbit(x, y, z);
  }
}
