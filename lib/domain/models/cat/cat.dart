import 'package:prueba_flutter_pragma/domain/models/cat/cat_image.dart';

class Cat {
  String id;
  String name;
  String description;
  String origin;
  int intelligence;
  CatImage? image;

  Cat(
      {required this.id,
      required this.name,
      required this.description,
      required this.origin,
      required this.intelligence,
      required this.image});
}
