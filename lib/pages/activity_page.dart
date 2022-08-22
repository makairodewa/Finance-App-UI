import 'package:finance/constants/style.dart';
import 'package:finance/widget/custom_text.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: caccent2,
          title: CustomText( text: "Activity", color: ink01, fontWeight: FontWeight.w600,)
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}


