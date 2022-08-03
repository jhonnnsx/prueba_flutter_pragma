import 'package:flutter/material.dart';
import 'package:prueba_flutter_pragma/ui/common/tokens/colors.dart';

class OurFooter extends StatelessWidget {
  final Icon iconLeft;
  final Icon iconRight;

  OurFooter(
      {this.iconRight = const Icon(Icons.airline_seat_individual_suite),
      this.iconLeft = const Icon(Icons.add_a_photo)});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.0,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: iconLeft,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: iconRight,
              label: 'School',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: BRAND_SECONDARY,
          unselectedItemColor: BRAND_SECONDARY,
          backgroundColor: BRAND_PRIMARY,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 30.0,
          onTap: (index) {
            print('oprimio el elemento --> $index');
          },
        ));
  }
}
