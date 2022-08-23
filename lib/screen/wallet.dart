import 'package:finance/constants/style.dart';
import 'package:finance/widget/custom_text.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ink02,
        backgroundColor: ink07,
        centerTitle: true,
        title: CustomText(
          text: "Your Wallet",
          color: ink01,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: ink02,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: ink02,
              )),
        ],
      ),
    );
  }
}
