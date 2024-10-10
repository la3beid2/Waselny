import 'package:flutter/material.dart';
import 'package:waselny/screens/auth/login.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  int _currentIndex = 0; // لتتبع رقم المربع الحالي

  final List<String> _data = [
    'هذه صفحة معلومات حول التطبيق 1',
    'هذه صفحة معلومات حول التطبيق 2',
    'هذه صفحة معلومات حول التطبيق 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 98, 174),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // تغير موضع الظل
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    _data[_currentIndex],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Hacen_Tehran',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // مسافة بين النص والزر
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255), // لون الزر
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                setState(() {
                  if (_currentIndex < _data.length - 1) {
                    _currentIndex++; // الانتقال إلى المربع التالي
                  } else {
                    // الانتقال إلى صفحة Home
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  }
                });
              },
              child: Text(
                _currentIndex < _data.length - 1 ? 'التالي' : 'انتقل للتطبيق', // تغيير نص الزر
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'Hacen_Tehran',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}