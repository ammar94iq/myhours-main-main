import 'package:flutter/material.dart';

import 'donate_hours.dart';
import 'my_hour.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> widgetPages = const [Welcome(), MyHour(), DonateHours()];
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
              BottomNavigationBarItem(icon: Icon(Icons.analytics), label: ''),
            ],
          ),
        ),
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.jpeg"),
          fit: BoxFit.fill,
        ),
      ),
      padding: const EdgeInsets.all(20.0),
      child: const Center(
        child: Text(
          "مرحبا بك",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    );
  }
}
