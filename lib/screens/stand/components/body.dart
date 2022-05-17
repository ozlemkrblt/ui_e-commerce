import 'package:flutter/material.dart';
import 'package:shop_app/uiprinciples/enums.dart';
import 'package:shop_app/models/Stand.dart';
import 'package:shop_app/components/home_header.dart';
import 'package:shop_app/screens/stand/components/product_banner.dart';
import 'package:shop_app/uiprinciples/size_config.dart';

class Body extends StatelessWidget {
  final Stand stand;

  const Body({Key? key, required this.stand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(selectedMenu: MenuState.home),
            SizedBox(height: getProportionateScreenHeight(80)),
            const ProductBanner(),
          ],
        ),
      ),
    );
  }
}
