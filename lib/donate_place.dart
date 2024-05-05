import 'package:flutter/material.dart';

class DonatePlace extends StatelessWidget {
  const DonatePlace({super.key});

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
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "داخل المدرسة",
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
                      "خارج المدرسة",
                      style: TextStyle(color: Colors.black, fontSize: 25.0),
                    ),
                  ),
                ),
                const SizedBox(height: 100.0),
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
