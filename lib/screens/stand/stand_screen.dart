import 'package:flutter/material.dart';
import 'package:shop_app/models/Stand.dart';
import 'package:shop_app/screens/stand/components/body.dart';
import 'package:shop_app/components/custom_app_bar.dart';

class StandScreen extends StatelessWidget {
  static String routeName = "/stand";

  @override
  Widget build(BuildContext context) {
    final StandArguments agrs =
        ModalRoute.of(context)!.settings.arguments as StandArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(id: agrs.stand.id),
      ),
      body: Body(stand: agrs.stand),
    );
  }
}

class StandArguments {
  final Stand stand;

  StandArguments({required this.stand});
}
