import 'package:flutter/material.dart';

class MySingleHours extends StatelessWidget {
  const MySingleHours({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg.jpeg"),
              fit: BoxFit.fill,
            ),
          ),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'images/logo.png',
                height: MediaQuery.of(context).size.width / 3.0,
                width: MediaQuery.of(context).size.width / 3.0,
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/chart.png',
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Center(
                          child: Text(
                            'الساعات المنجزة',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color.fromARGB(255, 82, 164, 232),
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              AnimatedPositioned(
                                top: 0,
                                duration: const Duration(seconds: 1),
                                child: Container(
                                  height: 20,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: const Color(0xFF5ECBB6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const Center(
                          child: Text(
                            'الساعات المتبقية',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width / 2.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color.fromARGB(255, 82, 164, 232),
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              AnimatedPositioned(
                                top: 0,
                                duration: const Duration(seconds: 1),
                                child: Container(
                                  height: 20,
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: const Color(0xFF5ECBB6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const Center(
                          child: Text(
                            'عدد الايام المتبقية',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width / 2.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color.fromARGB(255, 82, 164, 232),
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              AnimatedPositioned(
                                top: 0,
                                duration: const Duration(seconds: 1),
                                child: Container(
                                  height: 20,
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: const Color(0xFF5ECBB6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
