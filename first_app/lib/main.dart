import 'package:flutter/material.dart';
import 'component/first_page.dart';
import 'component/second_page.dart'; // ✅ ต้อง import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // กำหนดหน้าเริ่มต้น
      routes: {
        '/': (context) => const FirstPage(),   // Route สำหรับหน้าแรก
        '/second': (context) => const SecondPage(), // Route สำหรับหน้าสอง
      },
    );
  }
}
