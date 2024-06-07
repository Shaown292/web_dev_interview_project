import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashScreenController controller = Get.put(SplashScreenController());
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.5, end: 1.0).animate(
            CurvedAnimation(
              parent: controller.animationController,
              curve: Curves.easeInOut,

            ),
          ),
          child: Image.asset("assets/images/dokanLogo.png", scale: 4,),
        ),
      ),
    );
  }
}
