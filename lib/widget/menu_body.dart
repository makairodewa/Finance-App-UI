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
        SizedBox(
            height: 92, width: 60, child: Image.asset('assets/img/g_14.png')),
        SizedBox(
            height: 92, width: 60, child: Image.asset('assets/img/Vector.png')),
        SizedBox(
            height: 92, width: 60, child: Image.asset('assets/img/v_1.png')),
      ],
    );
  }
}
