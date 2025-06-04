import 'package:ecommerce_ui/features/login/view/screen/login_screen.dart';
import 'package:flutter/material.dart';

import 'features/home/view/screen/home_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
