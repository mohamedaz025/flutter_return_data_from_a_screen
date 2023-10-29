import 'package:flutter/material.dart';
import 'package:flutter_return_data_from_a_screen/pages/page1.dart';
import 'package:flutter_return_data_from_a_screen/pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        initialRoute: '/', // اسم اول صفحة تفتح للمستخدم
        routes: {
          // تعريف الصفحات
          '/': (context) => const page1(), // تعريف الصفحات
          "/page2": (context) => const page2(),
        }
        );
  }
}
