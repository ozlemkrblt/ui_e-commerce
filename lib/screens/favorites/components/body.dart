import 'package:flutter/material.dart';
import 'package:shop_app/uiprinciples/size_config.dart';

//BURAYA İKİYE AYRILAN SAYFAYI KOYACAĞIZ.
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Text("BURAYA FAVORI SAYFASI KONULACAK."),
      ],
    );
  }
}
