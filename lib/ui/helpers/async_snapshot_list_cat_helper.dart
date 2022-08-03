import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/atoms/our_text.dart';

import '../model_view/cat/list_cat_model_view.dart';

Widget asyncSnapshotListCatHelper(AsyncSnapshot snapshot) {
  Widget element = Container();
  if (snapshot.hasError) {
    element = H2(text: 'Error : ${snapshot.error.toString()}');
  } else if (!snapshot.hasData) {
    element = const Center(
      child: CircularProgressIndicator(),
    );
  } else {
    element = ListCatModelView(
      catList: snapshot.data,
    );
  }
  return element;
}
