import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/log_in_screen_controller.dart';

class LogInScreenView extends GetView<LogInScreenController> {
  const LogInScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LogInScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LogInScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
