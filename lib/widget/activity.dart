import 'package:finance/constants/style.dart';
import 'package:finance/widget/custom_text.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                text: "Your last activity",
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
              Row(
                children: const [
                  CustomText(text: "Today"),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          _buildLastActivity("Shopping", "assets/img/bag.png", "120,00"),
          _buildLastActivity("Food", "assets/img/bag.png", "55,00"),
          _buildLastActivity("Food", "assets/img/bag.png", "55,00"),
        ],
      ),
    );
  }

  Container _buildLastActivity(String text, String path, String nominal) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ink05,
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: ink07,
                backgroundImage: AssetImage(path),
              ),
              const SizedBox(
                width: 15,
              ),
              CustomText(
                text: text,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          CustomText(
            text: "\$$nominal",
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
