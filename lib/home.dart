import 'package:flutter/material.dart';

import 'my_hour.dart';
import 'settings.dart';
import 'single_hours.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> widgetPages = const [MyHour(), MySingleHours(), Settings()];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: widgetPages.elementAt(selectedIndex),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF5ECBB6),
            iconSize: 40.0,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            currentIndex: selectedIndex,
            onTap: (value) => setState(() {
              selectedIndex = value;
            }),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.timer_sharp), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
