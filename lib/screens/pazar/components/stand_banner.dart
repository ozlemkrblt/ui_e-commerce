import 'package:flutter/material.dart';
import 'package:shop_app/components/Stand_card.dart';
import 'package:shop_app/models/Stand.dart';
import 'package:shop_app/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class StandBanner extends StatelessWidget {
  const StandBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
          child: SectionTitle(title: "Standlar", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(40)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenWidth(
                    450), // <-- you should put some value here
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: demoStands.length,
                  itemBuilder: (context, index) {
                    return StandCard(stand: demoStands[index]);
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
