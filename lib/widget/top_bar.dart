import 'package:finance/constants/style.dart';
import 'package:finance/widget/custom_text.dart';
import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 137,
      decoration: BoxDecoration(
          color: caccent2,
          boxShadow: [
            BoxShadow(
                color: ink03.withOpacity(.5),
                blurRadius: 10,
                offset: const Offset(1, 10),
                spreadRadius: 3),
          ],
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const CircleAvatar(
              maxRadius: 25,
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CustomText(
                  text: "Hi, Coeek",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                  color: ink01,
                ),
                CustomText(
                  text: "Welcome back!",
                  textAlign: TextAlign.center,
                  color: ink01,
                ),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded))
          ],
        ),
      ),
    );
  }
}
