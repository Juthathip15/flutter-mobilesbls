import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // โลโก้ G หลากสี
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/2/2f/Google_2015_logo.svg',
              height: 120,
            ),
            const SizedBox(height: 40),
            // ไอคอน user
            const Icon(
              Icons.account_circle,
              size: 80,
              color: Colors.purple,
            ),
            const SizedBox(height: 40),
            // Progress bar จริง
            SizedBox(
              width: 120,
              child: LinearProgressIndicator(
                minHeight: 8,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                backgroundColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
