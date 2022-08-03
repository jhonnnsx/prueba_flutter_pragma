import 'package:prueba_flutter_pragma/infraestructure/driven_adapter/cat_api/cat_api.dart';
import '../domain/use_cases/cat/get_cat_use_case.dart';

class UseCaseConfig {
  late GetCatUseCase getCatUseCase;
  late CatApi _catApi;
  UseCaseConfig() {
    _catApi = CatApi();
    getCatUseCase = GetCatUseCase(_catApi);
  }
}
