import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
        child: Column(
          children: [
            Spacer(),
            Text(
              "الاعدادات",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
            Spacer(),
            ListTile(
              title: Text(
                "ادارة الحساب",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              leading:
                  Icon(Icons.manage_accounts, size: 35.0, color: Colors.white),
              trailing:
                  Icon(Icons.arrow_forward, size: 35.0, color: Colors.white),
            ),
            ListTile(
              title: Text(
                "تغيير كلمة المرور",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              leading: Icon(Icons.password, size: 35.0, color: Colors.white),
              trailing:
                  Icon(Icons.arrow_forward, size: 35.0, color: Colors.white),
            ),
            ListTile(
              title: Text(
                "اللغة",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              leading: Icon(Icons.language, size: 35.0, color: Colors.white),
              trailing:
                  Icon(Icons.arrow_forward, size: 35.0, color: Colors.white),
            ),
            ListTile(
              title: Text(
                "تسجيل الخروج",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              leading: Icon(Icons.logout, size: 35.0, color: Colors.white),
              trailing:
                  Icon(Icons.arrow_forward, size: 35.0, color: Colors.white),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
