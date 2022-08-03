import 'package:flutter/material.dart';
import 'package:prueba_flutter_pragma/ui/common/atoms/our_image.dart';
import 'package:prueba_flutter_pragma/ui/common/tokens/colors.dart';
import 'package:prueba_flutter_pragma/ui/pages/item_cat.dart';

import '../../../domain/models/cat/cat.dart';
import '../../common/atoms/our_text.dart';
import '../../common/tokens/typography.dart';

class ListCatModelView extends StatelessWidget {
  final List<Cat> catList;

  const ListCatModelView({
    Key? key,
    required this.catList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final element = Container(
      decoration: const BoxDecoration(color: SCALE_02),
      margin: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: catList
                .map((e) => Card(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                e.name,
                                style: const TextStyle(fontSize: H2_SIZE),
                              ),
                              InkWell(
                                child: const Text('Ver más',
                                    style: TextStyle(fontSize: H2_SIZE)),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ItemCat(cat: e)));
                                },
                              )
                            ],
                          ),

                          Image.network(e.image?.url ??
                              'https://cdn2.thecatapi.com/images/fhYh2PDcC.jpg'),
                          // Text(e.description),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(e.origin,
                                  style: const TextStyle(fontSize: H2_SIZE)),
                              Text('inteligencia: ${e.intelligence}',
                                  style: const TextStyle(fontSize: H2_SIZE))
                            ],
                          )
                        ],
                      ),
                    )))
                .toList()),
      ),
    );

    return element;
  }
}
