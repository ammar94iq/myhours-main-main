import 'package:flutter/material.dart';

class MyData extends StatelessWidget {
  const MyData({super.key});

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
          child: Center(
            child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                    ),
                    SizedBox(width: 10.0),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        "admin@.....",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50.0),
                const Text(
                  "المدرسة : التاسعة عشر",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "مسارات",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "السنة الثالثة",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                const SizedBox(height: 50.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "عودة",
                    style: TextStyle(color: Colors.black, fontSize: 25.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
