import 'package:flutter/material.dart';

import 'donate_hours.dart';
import 'donate_place.dart';
import 'mydata.dart';
import 'support.dart';

class MyHour extends StatelessWidget {
  const MyHour({super.key});

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
      child: ListView(
        shrinkWrap: true,
        children: [
          Image.asset(
            'images/logo.png',
            height: MediaQuery.of(context).size.width / 3.0,
            width: MediaQuery.of(context).size.width / 3.0,
          ),
          const SizedBox(height: 20.0),
          const Text(
            'ساعاتي',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'قم بتسجيل ساعاتك التطوعية',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 30.0,
                mainAxisSpacing: 30.0,
              ),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) {
                          return const DonateHours();
                        }),
                      ),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage('images/donate.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          'ساعات التطوع',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) {
                          return const MyData();
                        }),
                      ),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage('images/data.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          'بياناتي',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) {
                          return const Support();
                        }),
                      ),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage('images/support.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          'الدعم',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) {
                          return const DonatePlace();
                        }),
                      ),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage('images/building.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          'مكان التطوع',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
