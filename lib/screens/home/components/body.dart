import 'package:flutter/material.dart';
import 'package:shop_app/components/icon_btn_with_counter.dart';
import 'package:shop_app/uiprinciples/enums.dart';
import 'package:shop_app/screens/home/components/pazar_banner.dart';

import '../../../components/home_header.dart';
import 'package:shop_app/uiprinciples/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(
              selectedMenu: MenuState.home,
            ),
            //SizedBox(height: getProportionateScreenWidth(20)),
            PazarBanner(),
          ],
        ),
      ),
    );
  }
}
