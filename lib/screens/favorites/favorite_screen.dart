import 'package:flutter/material.dart';
import 'package:shop_app/screens/favorites/components/body.dart';

import '../../components/custom_bottom_nav_bar.dart';
import 'package:shop_app/uiprinciples/enums.dart';
import 'package:shop_app/components/custom_bottom_nav_bar.dart';
import 'package:shop_app/uiprinciples/enums.dart';

class FavoriteScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
