import 'package:flutter/material.dart';
import 'package:shop_app/models/Stand.dart';
import 'package:shop_app/screens/pazar/components/body.dart';
import 'package:shop_app/screens/pazar/components/custom_app_bar.dart';

import '../../models/Pazar.dart';

class StandScreen extends StatelessWidget {
  static String routeName = "/pazar";

  @override
  Widget build(BuildContext context) {
    final PazarArguments agrs =
        ModalRoute.of(context)!.settings.arguments as PazarArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(id: agrs.pazar.id),
      ),
      body: Body(pazar: agrs.pazar),
    );
  }
}

class PazarArguments {
  final Pazar pazar;

  PazarArguments({required this.pazar});
}

class StandArguments {
  final Stand stand;

  StandArguments({required this.stand});
}
