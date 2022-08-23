import 'package:finance/screen/activity_screen.dart';
import 'package:flutter/material.dart';

class MenuBodyWidget extends StatelessWidget {
  const MenuBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ActivityScreen(),
              )),
          child: SizedBox(
              height: 92, width: 60, child: Image.asset('assets/img/g_14.png')),
        ),
        SizedBox(
            height: 92, width: 60, child: Image.asset('assets/img/Vector.png')),
        SizedBox(
            height: 92, width: 60, child: Image.asset('assets/img/v_1.png')),
      ],
    );
  }
}
