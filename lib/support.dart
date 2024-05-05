import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({super.key});

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
                const Center(
                  child: Text(
                    "الدعم الفني",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Center(
                  child: Text(
                    "كيف نخدمك؟",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
                const SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "الاستعلام عن مجالات التطوع",
                      style: TextStyle(color: Colors.black, fontSize: 25.0),
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "شكوى عن مشكلة واجهتك",
                      style: TextStyle(color: Colors.black, fontSize: 25.0),
                    ),
                  ),
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
