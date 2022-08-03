import '../cat.dart';

abstract class CatGateway {
  Future<Cat> getByID(String id);
  Future<List<Cat>> getAll();
}
