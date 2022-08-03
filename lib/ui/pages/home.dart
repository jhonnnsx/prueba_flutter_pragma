import 'package:flutter/material.dart';
import 'package:prueba_flutter_pragma/config/use_case_config.dart';
import 'package:prueba_flutter_pragma/ui/common/molecules/our_header.dart';
import 'package:prueba_flutter_pragma/ui/helpers/async_snapshot_cat_helper.dart';

import '../common/molecules/our_footer.dart';
import '../helpers/async_snapshot_list_cat_helper.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UseCaseConfig catConfig = UseCaseConfig();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('CAT LIST'),
      ),
      body: Container(
          child: FutureBuilder(
              key: const Key('futureBuilder'),
              future: catConfig.getCatUseCase.getAll(),
              builder: (BuildContext context, AsyncSnapshot snapshot) =>
                  asyncSnapshotListCatHelper(snapshot))),
      // bottomNavigationBar: OurFooter(),
    );
  }
}
