import 'package:flutter/material.dart';
import 'package:shop_app/screens/pazar/components/body.dart';
import 'package:shop_app/screens/pazar/components/custom_app_bar.dart';

import '../../models/Pazar.dart';

class PazarScreen extends StatelessWidget {
  static String routeName = "/pazar";

  @override
  Widget build(BuildContext context) {
    final PazarArguments agrs =
        ModalRoute.of(context)!.settings.arguments as PazarArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: Body(pazar: agrs.pazar),
    );
  }
}

class PazarArguments {
  final Pazar pazar;

  PazarArguments({required this.pazar});
}
