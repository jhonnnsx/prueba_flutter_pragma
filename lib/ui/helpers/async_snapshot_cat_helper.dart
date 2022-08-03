import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba_flutter_pragma/ui/model_view/cat/cat_model_view.dart';

import '../common/atoms/our_text.dart';

Widget asyncSnapshotCatHelper(AsyncSnapshot snapshot) {
  Widget element = Container();
  if (snapshot.hasError) {
    element = H2(text: 'Error : ${snapshot.error.toString()}');
  } else if (!snapshot.hasData) {
    element = const Center(
      child: CircularProgressIndicator(),
    );
  } else {
    element = CatModelView(
      cat: snapshot.data,
    );
  }
  return element;
}
