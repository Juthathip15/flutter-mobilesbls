import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile Card'),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Container(
            width: 350,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.pink, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 1. รูปภาพ
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/images/480216272_1744547462944887_3467477708363274949_n.jpg',
                  ),
                ),

                // 2. ชื่อนามสกุล
                const Text(
                  "Juthathip Tharathoy",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),

                // 3. รหัสนักศึกษา
                const Text(
                  "รหัสนักศึกษา: 650710677",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),

                // 4. สาขาวิชาเอก
                const Text(
                  "สาขา: Information Technology",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),

                const SizedBox(height: 10),

                // 5. คำโปรยตัวเอง
                const Text(
                  "“Designing a better world through UX/UI ✨”",
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
