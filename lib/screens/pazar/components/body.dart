import 'package:flutter/material.dart';
import 'package:shop_app/models/Pazar.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/screens/pazar/components/categories.dart';
import 'package:shop_app/screens/pazar/components/stand_banner.dart';
import 'package:shop_app/size_config.dart';

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
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(80)),
            StandBanner(),
          ],
        ),
      ),
    );
    /* return ListView(
      children: [
        StandImages(pazar: pazar),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              PazarDescription(
                pazar: pazar,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(pazar: pazar),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );*/
  }
}
