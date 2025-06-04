import 'package:ecommerce_ui/features/home/view/screen/home_screen.dart';
import 'package:ecommerce_ui/features/login/view/screen/login_screen.dart';
import 'package:ecommerce_ui/widgets/custom_text_button.dart';
import 'package:ecommerce_ui/widgets/custom_text_form_field.dart';
import 'package:ecommerce_ui/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SignUpScreenBody extends StatefulWidget {
  const SignUpScreenBody({super.key});

  @override
  _SignUpScreenBodyState createState() => _SignUpScreenBodyState();
}

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nationalController = TextEditingController();
  final TextEditingController tokenController = TextEditingController();

  void _signUp() {
    if (_formKey.currentState!.validate()) {
      final username = usernameController.text;
      final password = passwordController.text;
      final phone = phoneController.text;
      final email = emailController.text;
      final nationalID = nationalController.text;
      final token = tokenController.text;

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
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
                // Phone
                const SizedBox(height: 20),
                CustomTextFormField(
                  labelText: 'Phone',
                  icon: Icons.phone_android,
                  controller: phoneController,
                ),
                // E-Mail
                const SizedBox(height: 20),
                CustomTextFormField(
                  labelText: 'E-Mail',
                  icon: Icons.email,
                  controller: emailController,
                ),
                // National ID
                const SizedBox(height: 20),
                CustomTextFormField(
                  labelText: 'National ID',
                  icon: Icons.credit_card,
                  controller: nationalController,
                ),
                //Token
                const SizedBox(height: 20),
                CustomTextFormField(
                  labelText: 'Token',
                  icon: Icons.token,
                  controller: tokenController,
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
                CustomElevatedButton(onPressed: _signUp, title: 'Sign up'),

                const SizedBox(height: 16),

                // Sign up text
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have an account?"),
                    CustomTextButton(screen: LoginScreen(), title: 'Login')
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
