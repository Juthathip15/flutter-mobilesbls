import 'package:flutter/material.dart';
import 'component/my_widget.dart';  // เรียกใช้ widget

void main() {
  runApp(const MyApp()); // เริ่มแอปด้วย MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(), // ใช้ widget ที่ import มา
    );
  }
}
