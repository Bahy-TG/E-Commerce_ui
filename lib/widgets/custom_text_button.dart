import 'package:flutter/material.dart';
class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.screen, required this.title});
  final Widget screen;
  final String title;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => screen),
        );
      },
      child:  Text(title),
    );
  }
}
