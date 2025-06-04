import 'package:ecommerce_ui/features/home/view/screen/home_screen.dart';
import 'package:ecommerce_ui/widgets/custom_text_button.dart';
import 'package:ecommerce_ui/widgets/custom_text_form_field.dart';
import 'package:ecommerce_ui/features/sign_up/view/screen/sign_up_screen.dart';
import 'package:ecommerce_ui/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  _LoginScreenBodyState createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      final username = usernameController.text;
      final password = passwordController.text;

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) =>const HomeScreen()),
            (Route<dynamic> route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Username
                CustomTextFormField(
                  labelText: 'User name',
                  icon: Icons.person,
                  controller: usernameController,
                ),
                const SizedBox(height: 20),

                // Password
                CustomTextFormField(
                  labelText: 'Password',
                  icon: Icons.lock,
                  controller: passwordController,
                  obscureText: true,
                ),
                const SizedBox(height: 24),

                // Login Button
                CustomElevatedButton(onPressed: _login, title: 'Login'),
                const SizedBox(height: 16),

                // Sign up text
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    CustomTextButton(screen: SignUpScreen(), title: 'Sign up')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
