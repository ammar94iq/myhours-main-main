import 'package:flutter/material.dart';

import 'login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
          child: ListView(
            children: <Widget>[
              // Logo
              Image.asset(
                'images/logo.png',
                height: MediaQuery.of(context).size.width / 3.0,
                width: MediaQuery.of(context).size.width / 3.0,
              ),
              const SizedBox(height: 20.0),
              // "Log In" text
              const Text(
                'انشاء حساب جديد',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              // "Log In" text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'لديك حساب؟',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            return const Login();
                          }),
                        ),
                      );
                    },
                    child: const Text(
                      'قم بتسجيل الدخول',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20.0),
              // Name Field
              const Text(
                'الاسم الكامل',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
              const SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              // Email Field
              const Text(
                'الايميل',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
              const SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              // Password Field
              const Text(
                'كلمة السر',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
              const SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10.0),
              // Age Field
              const Text(
                'العمر',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
              const SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10.0),
              // City Field
              const Text(
                'المدينة',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
              const SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Register Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const Login();
                      }),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'انشاء الحساب',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
