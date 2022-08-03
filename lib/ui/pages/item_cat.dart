import 'package:flutter/material.dart';
import 'package:prueba_flutter_pragma/domain/models/cat/cat.dart';
import 'package:prueba_flutter_pragma/ui/model_view/cat/cat_model_view.dart';

class ItemCat extends StatelessWidget {
  final Cat cat;

  const ItemCat({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(cat.name)),
      body: CatModelView(cat: cat),
    );
  }
}
