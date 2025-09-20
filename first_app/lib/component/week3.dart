import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: const Center(child: Text('Item 1')),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: const Center(child: Text('Item 2')),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: const Center(child: Text('Item 3')),
          ),
        ],
      ),
    );
  }
}
