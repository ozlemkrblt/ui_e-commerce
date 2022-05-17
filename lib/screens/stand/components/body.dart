import 'package:flutter/material.dart';
import 'package:shop_app/models/Stand.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/size_config.dart';

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
            const HomeHeader(),
            //SizedBox(height: getProportionateScreenHeight(80)),
            // ProductBanner(),
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
