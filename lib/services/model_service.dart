import '../models/model_data.dart';

class ModelService {
  Future<List<ModelData>> fetchModels() async {
    // Simulating fetching data from an API or database
    return [
      ModelData('Astronaut',
          'https://modelviewer.dev/shared-assets/models/Astronaut.glb'),
      ModelData('shish kebab',
          'https://modelviewer.dev/shared-assets/models/shishkebab.glb'),
    ];
  }
}
