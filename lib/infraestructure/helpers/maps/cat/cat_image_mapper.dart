import 'package:prueba_flutter_pragma/domain/models/cat/cat_image.dart';

import '../common/base_mapper.dart';

class CatImageMapper implements BaseMapper<CatImage> {
  @override
  fromMap(Map<String, dynamic> json) => CatImage(
        id: json['id'],
        width: json['width'],
        height: json['height'],
        url: json['url'],
      );
}
