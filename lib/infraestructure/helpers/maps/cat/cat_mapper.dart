import 'package:prueba_flutter_pragma/domain/models/cat/cat.dart';
import 'package:prueba_flutter_pragma/domain/models/cat/cat_image.dart';
import 'package:prueba_flutter_pragma/infraestructure/helpers/maps/cat/cat_image_mapper.dart';

import '../common/base_mapper.dart';

class CatMapper implements BaseMapper<Cat> {
  final CatImageMapper imageMapper = CatImageMapper();

  @override
  fromMap(Map<String, dynamic> json) {
    // print(json['image']);

    return Cat(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        origin: json['origin'],
        intelligence: json['intelligence'],
        image: json['image'] != null
            ? imageMapper.fromMap(json['image']) as CatImage
            : null);
  }
}
