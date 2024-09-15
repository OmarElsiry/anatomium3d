import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/model_view_page.dart';
import '../views/widget/bottom_nav_bar.dart';
import '../services/model_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ModelService modelService = ModelService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Anatomium 3D'),
      ),
      body: FutureBuilder(
        future: modelService.fetchModels(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final models = snapshot.data as List;

          return ListView.builder(
            itemCount: models.length,
            itemBuilder: (context, index) {
              final model = models[index];
              return ListTile(
                title: Text(model.name),
                onTap: () {
                  Get.to(() => ModelViewPage(modelData: model));
                },
              );
            },
          );
        },
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
