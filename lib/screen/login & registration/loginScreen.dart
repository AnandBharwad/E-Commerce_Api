import 'package:flutter/material.dart';

class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({super.key});

  @override
  State<MyLoginScreen> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, const Color.fromARGB(184, 158, 158, 158), const Color.fromARGB(196, 255, 255, 255)],
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(children: [Text("hello")]),
        ),
      ),
    );
  }
}
