import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:o3d/o3d.dart' as o3d; // Import with a prefix
import '../models/model_data.dart';
import '../controllers/o3d_controller.dart';

class ModelViewPage extends StatelessWidget {
  final ModelData modelData;
  const ModelViewPage({super.key, required this.modelData});

  @override
  Widget build(BuildContext context) {
    final O3DController o3dController = Get.find<O3DController>();

    return Scaffold(
      appBar: AppBar(
        title: Text(modelData.name),
      ),
      body: Stack(
        children: [
          o3d.O3D.network(
            src: modelData.url,
            controller: o3dController.o3dController,
            autoPlay: true,
            autoRotate: true,
            cameraControls: true,
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Action for rotating or manipulating the model
              },
              child: const Icon(Icons.rotate_right),
            ),
          )
        ],
      ),
    );
  }
}
