import 'package:ecommerce_self_project/screen/admin/admin_add_product.dart';
import 'package:ecommerce_self_project/screen/admin/admins_homeScreen.dart';
import 'package:ecommerce_self_project/screen/login%20&%20registration/loginScreen.dart';
import 'package:ecommerce_self_project/screen/product_display.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdminHomeScreen(),
    );
  }
}
