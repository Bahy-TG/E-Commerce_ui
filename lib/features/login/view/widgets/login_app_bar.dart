import 'package:flutter/material.dart';

import '../../../../core/style/app_text.dart';
import '../../../../core/style/color.dart';

AppBar loginAppBar(){
  return AppBar(
    title: const Text(
      AppText.loginTitle,
      style: TextStyle(
        fontSize: 26,
        color: AppColors.orange,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}