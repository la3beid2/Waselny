import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:waselny/screens/auth/signup.dart';

import '../../widgets/core/textfield/consts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 9, 98, 174),
              Color.fromARGB(255, 105, 174, 236),
            ],
            begin: Alignment.topRight,
            end: Alignment.topLeft,
          ),
        ),
        child: SingleChildScrollView(
          // Enable scrolling
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 9, 98, 174),
                      Color.fromARGB(255, 105, 174, 236),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.4, // Set height
                child: const Center(
                    // image here
                    ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, top: 20.0, left: 20.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "مرحبا بك مرة أخرى",
                          style: TextStyle(
                              fontSize: 35, fontFamily: 'Hacen_Tehran'),
                        ),
                        const Text(
                          "سعداء لرؤيتك مجدداً",
                          style: TextStyle(
                              fontSize: 30, fontFamily: 'Hacen_Tehran'),
                        ),
                        const SizedBox(height: 20),
                        const email(),
                        const SizedBox(height: 20),
                        const pass(),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "هل نسيت كلمة السر ؟",
                              style: TextStyle(
                                  fontFamily: 'Hacen_Tehran',
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 144, 141, 141)),
                            )),
                        const SizedBox(
                          width: double.infinity,
                          child: bottonlogin(),
                        ),
                        const SizedBox(height: 20),
                        const Center(
                          child: Text(
                            '_________او قم بتسجيل الدخول بـ_________',
                            style: TextStyle(
                                fontFamily: 'Hacen_Tehran', color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const icons(),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 10, bottom: 10),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Hacen_Tehran',
                              ),
                              children: [
                                const TextSpan(text: "لا يوجد لديك حساب؟ "),
                                TextSpan(
                                  text: "اضغط هنا",
                                  style: const TextStyle(
                                    color: Colors.blue,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const signup()),
                                      );
                                    },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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
