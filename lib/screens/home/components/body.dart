import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/discount_banner.dart';

import '../../../size_config.dart';
import '../../pazar/components/categories.dart';
import 'home_header.dart';
import 'popular_product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(20)),
            Categories(),
            DiscountBanner(),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
