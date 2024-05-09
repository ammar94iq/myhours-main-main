import 'package:flutter/material.dart';

class DonateHours extends StatelessWidget {
  const DonateHours({super.key});

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
              const SizedBox(height: 10.0),
              const Spacer(),
              const SizedBox(height: 20.0),
              const Text(
                'ادخال ساعات التطوع',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              const SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'الجهة المسؤولة',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              const SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'اليوم',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              const SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),

              // Submit Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text(
                  'تحميل PDF',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              const Spacer(),
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
    );
  }
}
