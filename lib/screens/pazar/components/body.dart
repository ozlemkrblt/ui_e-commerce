import 'package:flutter/material.dart';
import 'package:shop_app/uiprinciples/enums.dart';
import 'package:shop_app/models/Pazar.dart';
import 'package:shop_app/components/home_header.dart';
import 'package:shop_app/screens/pazar/components/stand_banner.dart';
import 'package:shop_app/uiprinciples/size_config.dart';

class Body extends StatelessWidget {
  final Pazar pazar;

  const Body({Key? key, required this.pazar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(
              selectedMenu: MenuState.home,
            ),
            StandBanner(),
          ],
        ),
      ),
    );
  }
}
