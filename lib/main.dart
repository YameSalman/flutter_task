import 'package:flutter/material.dart';

import 'App_pages/cart_page.dart';
import 'App_pages/item_page.dart';
import 'Auth_pages/login_page.dart';
import 'Auth_pages/register_page.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
