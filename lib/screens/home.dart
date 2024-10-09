import 'package:flutter/material.dart';
import 'package:waselny/widgets/map.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 9, 98, 174),
        title: const Text(
          'وصلني',
          style: TextStyle(fontFamily: 'Hacen_Tehran', color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      endDrawer: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 9, 98, 174),
                ),
                accountName: Text(
                  'اسم المستخدم',
                  style: TextStyle(color: Colors.white,fontFamily: 'Hacen_Tehran'),
                ),
                accountEmail: Text(
                  'البريد الإلكتروني',
                  style: TextStyle(color: Colors.white,fontFamily: 'Hacen_Tehran'),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // صورة المستخدم
                ),
              ),
              Expanded(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.home),
                        title: const Text('الصفحة الرئيسية',
                          style: TextStyle(
                               fontFamily: 'Hacen_Tehran'),),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.settings),
                        title: const Text('إعدادات الحساب',
                          style: TextStyle(
                               fontFamily: 'Hacen_Tehran')),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.info),
                        title: const Text('حول التطبيق',
                          style: TextStyle(
                               fontFamily: 'Hacen_Tehran')),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.logout),
                        title: const Text('تسجيل الخروج',
                          style: TextStyle(
                               fontFamily: 'Hacen_Tehran')),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body:const Maps(),
    );
  }
}
