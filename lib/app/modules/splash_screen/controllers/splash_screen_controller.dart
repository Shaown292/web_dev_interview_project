import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController with SingleGetTickerProviderMixin {

  late  AnimationController animationController;
  late Animation<double> curvedAnimation;



  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    curvedAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );
    // Add listener to navigate after animation ends
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Navigate to the next page
        Get.offNamed("/home");
      }
    });

    // Start the animation
    animationController.forward();

  }

  @override
  void onClose() {
    animationController.dispose();
    
    super.onClose();
  }
}






