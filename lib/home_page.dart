import 'package:finance/constants/style.dart';
import 'package:finance/screen/activity_screen.dart';
import 'package:finance/screen/home_screen.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentIndex = 0;

  final List<Widget> _screen = [const HomeScreen(), const ActivityScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const Drawer(),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: IndexedStack(
        index: currentIndex,
        children: _screen,
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) => setState(() {
        currentIndex = value;
      }),
      iconSize: 30,
      selectedItemColor: cActive,
      unselectedItemColor: ink03,
      selectedFontSize: 16,
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
    );
  }
}

