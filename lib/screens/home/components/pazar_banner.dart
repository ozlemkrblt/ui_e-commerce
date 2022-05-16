import 'package:flutter/material.dart';
import 'package:shop_app/components/pazar_card.dart';
import 'package:shop_app/models/Pazar.dart';
import 'package:shop_app/screens/home/components/section_title.dart';

import '../../../size_config.dart';
import '../../pazar/pazar_screen.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* return InkWell(
     // child: Container(
        // height: 90,
        width: double.infinity,
        margin: EdgeInsets.all(getProportionateScreenWidth(20)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        decoration: BoxDecoration(
          color: Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20),
        ),
        children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
        /**child: Text.rich(
        //TextSpan(
        //style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: "Özkanlar Meyve Sebze Pazarı",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(24),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),*/
      ),
      onTap: () {
        //Navigator.pushNamed(context, PazarScreen.routeName);
        
      },
    );*/

    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
          child: SectionTitle(title: "Pazarlar", press: () {}),
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
                  itemCount: demoPazar.length,
                  itemBuilder: (context, index) {
                    return PazarCard(pazar: demoPazar[index]);
                  },
                ),
              ),

              /*children: [
              
              ...List.generate(
                
                demoPazar.length,
                (index) {
                  if (demoPazar[index].isPopular) {
                    return PazarCard(pazar: demoPazar[index]);
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
