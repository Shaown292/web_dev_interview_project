import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LogInScreenController extends GetxController {

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool makePassVisible = false.obs;

  Future<void> loginUser(String username, String password) async {

    try {

      isLoading.value = true;

      // Making the API call
      http.Response response = await http.post(
        Uri.parse("https://apptest.dokandemo.com/wp-json/jwt-auth/v1/token?username=$username&password=$password"),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded', // Specify the content type as JSON
        },
      );

      if (response.statusCode == 200) {

        print('Login successful');

        isLoading.value = false;
      } else {

        print('Login failed');
        isLoading.value = false;
      }
    } catch (error) {

      print('Error: $error');
      isLoading.value = false;
    }
  }
}
