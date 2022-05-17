import 'package:flutter/material.dart';
import 'package:shop_app/components/Stand_card.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/models/Stand.dart';
import 'package:shop_app/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
          child: SectionTitle(title: "Ürünlerimiz", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenWidth(
                    250), // <-- you should put some value here
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: demoProducts.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: demoProducts[index]);
                  },
                ),
              ),

              /*children: [
              
              ...List.generate(
                
                demoStand.length,
                (index) {
                  if (demoStand[index].isPopular) {
                    return StandCard(Stand: demoStand[index]);
                  }

                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),*/
            ],
          ),
        ),
      ],
    );
  }
}
