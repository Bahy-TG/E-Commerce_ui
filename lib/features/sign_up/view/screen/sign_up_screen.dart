import 'package:ecommerce_ui/features/login/view/widgets/login_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/sign_up_app_bar.dart';
import '../widgets/sign_up_screen_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: signUpAppBar(),
      body: const SignUpScreenBody(),
    );
  }
}
