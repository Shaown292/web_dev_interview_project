import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RegistrationScreenController extends GetxController {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController confirmPasswordTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;

  Future<void> register(
      {required String username,
      required String email,
      required String password}) async {
    isLoading.value = true;
    final response = await http.post(
      Uri.parse('https://apptest.dokandemo.com/wp-json/wp/v2/users/register'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      Get.snackbar("Congratulations", "Registration successfully");
      Get.offNamed("/log-in-screen");
      isLoading.value = false;
    } else {
      Get.snackbar("Registration failed", "Check the attributes");
      Get.offNamed("/home");
      isLoading.value = false;
    }
  }
}
