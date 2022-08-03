import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:prueba_flutter_pragma/domain/models/cat/cat.dart';
import 'package:prueba_flutter_pragma/domain/models/cat/gateway/cat_gateway.dart';
import 'package:prueba_flutter_pragma/infraestructure/helpers/maps/cat/cat_mapper.dart';

class CatApi extends CatGateway {
  final CatMapper _catMapper = CatMapper();
  @override
  Future<List<Cat>> getAll() async {
    final response = await http.get(
        Uri.parse('https://api.thecatapi.com/v1/breeds'),
        headers: {'x-api-key': 'bda53789-d59e-46cd-9bc4-2936630fde39 '});

    if (response.statusCode == 200) {
      List<dynamic> lista = jsonDecode(response.body);

      final List<Cat> listCat =
          lista.map((e) => _catMapper.fromMap(e) as Cat).toList();
      return listCat;
    } else {
      throw Exception('Fue imposible adquirir esta url');
    }
  }

  @override
  Future<Cat> getByID(String id) async {
    final response = await http.get(
        Uri.parse('https://api.thecatapi.com/v1/breeds/$id'),
        headers: {'x-api-key': 'bda53789-d59e-46cd-9bc4-2936630fde39'});
    if (response.statusCode == 200) {
      return _catMapper.fromMap(jsonDecode(response.body));
    } else {
      throw Exception('Fue imposible adquirir esta url');
    }
  }
}
