import 'package:flutter/material.dart';
import '../../../../core/style/app_text.dart';
import '../../../../core/style/color.dart';

AppBar homeAppBar() {
  return AppBar(
    centerTitle: true,
    title: const Text(
      AppText.homeTitle,
      style: TextStyle(
        fontSize: 26,
        color: AppColors.orange,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
