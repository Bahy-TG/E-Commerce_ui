import 'package:ecommerce_ui/features/login/view/widgets/login_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: loginAppBar(),
      body:  LoginScreenBody(),
    );
  }
}
