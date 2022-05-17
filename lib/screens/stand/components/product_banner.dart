import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';

import 'package:shop_app/components/section_title.dart';

import 'package:shop_app/uiprinciples/size_config.dart';

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
                    420), // <-- you should put some value here
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: demoProducts.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: demoProducts[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
