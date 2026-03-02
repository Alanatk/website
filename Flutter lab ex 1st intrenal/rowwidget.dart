import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row Layout Example"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("One", style: TextStyle(fontSize: 20)),
              Text("Two", style: TextStyle(fontSize: 20)),
              Text("Three", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}