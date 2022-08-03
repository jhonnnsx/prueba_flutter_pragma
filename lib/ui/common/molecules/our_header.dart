import 'package:flutter/material.dart';
import 'package:prueba_flutter_pragma/ui/common/tokens/colors.dart';
import 'package:prueba_flutter_pragma/ui/common/tokens/typography.dart';

class OurAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Icon iconAppBarr;

  OurAppBar(
      {this.title = 'Arquitectura limpia',
      this.iconAppBarr = const Icon(Icons.add)});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: SCALE_05,
      title: Text(
        this.title,
        key: Key('app-bar-title'),
        style: TextStyle(fontSize: H1_SIZE),
      ),
      actions: [
        IconButton(
          icon: this.iconAppBarr,
          onPressed: () => {print("Oprimiste +")},
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          onPressed: () => {print("Oprimiste >")},
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
