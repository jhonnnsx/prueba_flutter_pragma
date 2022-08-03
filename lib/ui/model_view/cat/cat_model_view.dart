import 'package:flutter/material.dart';
import 'package:prueba_flutter_pragma/ui/common/atoms/our_image.dart';
import 'package:prueba_flutter_pragma/ui/common/tokens/colors.dart';

import '../../../domain/models/cat/cat.dart';
import '../../common/atoms/our_text.dart';
import '../../common/tokens/typography.dart';

class CatModelView extends StatelessWidget {
  final Cat cat;

  const CatModelView({
    Key? key,
    required this.cat,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final element = Container(
      decoration: const BoxDecoration(color: SCALE_02),
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.network(cat.image?.url ??
                'https://cdn2.thecatapi.com/images/fhYh2PDcC.jpg'),
          ),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cat.name,
                        key: const Key('title-album-api'),
                        style: const TextStyle(fontSize: H2_SIZE),
                        textAlign: TextAlign.center,
                      ),
                      const Divider(
                        height: 30,
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(fontSize: H2_SIZE),
                      ),
                      Text(
                        cat.description,
                        style: const TextStyle(fontSize: CONTENT_TEXT),
                      ),
                      const Divider(
                        height: 30,
                      ),
                      const Text(
                        'Origin',
                        style: TextStyle(fontSize: H2_SIZE),
                      ),
                      Text(
                        cat.origin,
                        style: const TextStyle(fontSize: CONTENT_TEXT),
                      ),
                      const Divider(
                        height: 30,
                      ),
                      const Text(
                        'intelligence',
                        style: TextStyle(fontSize: H2_SIZE),
                      ),
                      Text(
                        cat.intelligence.toString(),
                        style: const TextStyle(fontSize: CONTENT_TEXT),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );

    return element;
  }
}
