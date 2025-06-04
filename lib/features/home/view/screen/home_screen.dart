import 'package:ecommerce_ui/features/home/view/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

import '../widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: homeAppBar(),
        body: const HomeScreenBody());
  }
}
