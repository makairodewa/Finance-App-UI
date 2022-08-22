import 'package:finance/constants/style.dart';
import 'package:finance/pages/activity_page.dart';
import 'package:finance/widget/activity.dart';
import 'package:finance/widget/balance.dart';
import 'package:finance/widget/menu_body.dart';
import 'package:finance/widget/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
      home: const ActivityPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: cActive,
        unselectedItemColor: ink03,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_activity_outlined,
              ),
              label: "Activity"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart_outline_sharp,
              ),
              label: "Statistics"),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: const [
            TopBarWidget(),
            BalanceWidget(),
            MenuBodyWidget(),
            ActivityWidget(),
          ],
        )),
      ),
    );
  }
}
