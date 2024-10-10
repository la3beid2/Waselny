import 'package:flutter/material.dart';

import '../widgets/core/textfield/consts.dart';
import 'home.dart';

class EditUser extends StatelessWidget {
  const EditUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 9, 98, 174),
        title: const Text(
          'إعدادات الحساب',
          style: TextStyle(fontFamily: 'Hacen_Tehran', color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white), // أيقونة السهم
          onPressed: () {
           Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  textDirection: TextDirection.rtl,
                  'تعديل المعلومات الشخصية',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hacen_Tehran',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 80, 
                  backgroundImage: const NetworkImage('https://via.placeholder.com/150'),
                  child: IconButton(
                    icon: const Icon(Icons.camera_alt, color: Colors.white),
                    onPressed: () {
                     
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const name(),
              const SizedBox(height: 20),
              const pass(),
              const SizedBox(height: 20),
              const pass2(),
              const SizedBox(height: 20),
              const bottonsave(),
            ],
          ),
        ),
      ),
    );
  }
}