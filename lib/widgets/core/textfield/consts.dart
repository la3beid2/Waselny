import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:waselny/screens/home.dart';

class email extends StatefulWidget {
  const email({super.key});

  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<email> {
  final TextEditingController _controller = TextEditingController();
  String? _errorText;

  void _validateEmail(String value) {
    setState(() {
      _errorText = value.contains('@') ? null : 'Most Contain @';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          onChanged: _validateEmail,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 9, 98, 174),
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 9, 98, 174),
                width: 2,
              ),
            ),
            hintText: "أدخل بريدك الإلكتروني",
            hintStyle:
                const TextStyle(color: Colors.grey, fontFamily: 'Hacen_Tehran'),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            prefixIcon: const Icon(
              Icons.email,
              color: Color.fromARGB(255, 9, 98, 174),
            ),
            errorText: _errorText, // عرض رسالة الخطأ إذا كانت موجودة
          ),
        ),
      ],
    );
  }
}

class phone extends StatelessWidget {
  const phone({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      keyboardType: TextInputType.phone, // تحديد نوع الإدخال كرقم هاتف
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // السماح بأرقام فقط
      ],
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 9, 98, 174),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 9, 98, 174),
            width: 2,
          ),
        ),
        hintText: "أدخل رقم الهاتف",
        hintStyle:
            const TextStyle(color: Colors.grey, fontFamily: 'Hacen_Tehran'),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        prefixIcon: const Icon(
          Icons.phone,
          color: Color.fromARGB(255, 9, 98, 174),
        ),
      ),
    );
  }
}

class pass extends StatelessWidget {
  const pass({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 9, 98, 174),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 9, 98, 174),
            width: 2,
          ),
        ),
        hintText: "أدخل كلمة السر",
        hintStyle:
            const TextStyle(color: Colors.grey, fontFamily: 'Hacen_Tehran'),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        prefixIcon: const Icon(
          Icons.lock,
          color: Color.fromARGB(255, 9, 98, 174),
        ),
      ),
    );
  }
}
class pass2 extends StatelessWidget {
  const pass2({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 9, 98, 174),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 9, 98, 174),
            width: 2,
          ),
        ),
        hintText: "أعد إدخال كلمة السر",
        hintStyle:
            const TextStyle(color: Colors.grey, fontFamily: 'Hacen_Tehran'),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        prefixIcon: const Icon(
          Icons.lock,
          color: Color.fromARGB(255, 9, 98, 174),
        ),
      ),
    );
  }
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 9, 98, 174),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 9, 98, 174),
            width: 2,
          ),
        ),
        hintText: "أدخل  الإسم",
        hintStyle:
            const TextStyle(color: Colors.grey, fontFamily: 'Hacen_Tehran'),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        prefixIcon: const Icon(
          Icons.person,
          color: Color.fromARGB(255, 9, 98, 174),
        ),
      ),
    );
  }
}

class bottonlogin extends StatelessWidget {
  const bottonlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 9, 98, 174),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Home()));
      },
      child: const Text(
        "تسجيل الدخول",
        style: TextStyle(
          fontFamily: 'Hacen_Tehran',
          color: Colors.white,
        ),
      ),
    );
  }
}

class bottonsignup extends StatelessWidget {
  const bottonsignup({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 9, 98, 174),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: () {},
      child: const Text(
        "تسجيل",
        style: TextStyle(
          fontFamily: 'Hacen_Tehran',
          color: Colors.white,
        ),
      ),
    );
  }
}
class bottonsave extends StatelessWidget {
  const bottonsave({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 9, 98, 174),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: () {},
      child: const Text(
        "حفظ",
        style: TextStyle(
          fontFamily: 'Hacen_Tehran',
          color: Colors.white,
        ),
      ),
    );
  }
}
class icons extends StatelessWidget {
  const icons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSocialButton('assets/images/Facebook.png'),
        _buildSocialButton('assets/images/Google.png'),
        _buildSocialButton(
            'assets/images/Twitter.png'), // Replace with your Twitter icon path
      ],
    );
  }
}

Widget _buildSocialButton(String iconPath) {
  return GestureDetector(
    onTap: () {
      // Action when button is pressed
      print("${iconPath.split('/').last} clicked"); // Print the icon name
    },
    child: Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          iconPath,
          width: 40,
          height: 40,
        ),
      ),
    ),
  );
}
