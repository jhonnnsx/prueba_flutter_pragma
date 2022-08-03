import 'package:prueba_flutter_pragma/domain/models/cat/cat.dart';
import 'package:prueba_flutter_pragma/domain/models/cat/gateway/cat_gateway.dart';

class GetCatUseCase {
  final CatGateway _catGateway;
  GetCatUseCase(this._catGateway);
  Future<Cat> getCatByID(String id) async {
    return _catGateway.getByID(id);
  }

  Future<List<Cat>> getAll() async {
    return _catGateway.getAll();
  }
}
