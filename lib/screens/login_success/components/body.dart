import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

//BURAYA İKİYE AYRILAN SAYFAYI KOYACAĞIZ.
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.6, //%60
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.9,
          child: DefaultButton(
            text: "Online Alışveriş Yapmak İstiyorum",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
