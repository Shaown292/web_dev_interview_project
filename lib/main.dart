import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dev_interview_project/initializer.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await Initializer.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}