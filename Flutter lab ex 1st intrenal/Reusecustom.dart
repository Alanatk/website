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
          title: const Text('Reusable Button - One File'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomStyledButton(
                text: 'Login',
                onPressed: () {
                  print('Login Clicked');
                },
              ),
              const SizedBox(height: 16),
              CustomStyledButton(
                text: 'Register',
                onPressed: () {
                  print('Register Clicked');
                },
              ),
              const SizedBox(height: 16),
              CustomStyledButton(
                text: 'Submit',
                onPressed: () {
                  print('Submit Clicked');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* 🔽 Reusable Custom Widget (Same File) 🔽 */
class CustomStyledButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomStyledButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 14,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
