import 'package:finance/widget/custom_text.dart';
import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 28),
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 21),
          child: Row(
            children: [
              SizedBox(
                  height: 130, child: Image.asset('assets/img/cc_coins.png')),
              const SizedBox(
                width: 15,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: "Your balance",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomText(
                          text: "\$7,065.00",
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.wallet_sharp),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(text: "Wallet"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
