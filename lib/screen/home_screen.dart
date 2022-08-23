
import 'package:finance/widget/activity.dart';
import 'package:finance/widget/balance.dart';
import 'package:finance/widget/menu_body.dart';
import 'package:finance/widget/top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: const[
            TopBarWidget(),
            BalanceWidget(),
            MenuBodyWidget(),
            ActivityWidget(),
          ],
        ));
  }
}