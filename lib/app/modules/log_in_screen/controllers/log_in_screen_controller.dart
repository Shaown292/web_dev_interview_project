
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

      http.Response response = await http.post(
        Uri.parse("https://apptest.dokandemo.com/wp-json/jwt-auth/v1/token?username=$username&password=$password"),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      );

      if (response.statusCode == 200) {
        Get.snackbar("Welcome", "Log in successfully");
        Get.offNamed("/dashboard");
        isLoading.value = false;
      } else {

        isLoading.value = false;
        Get.snackbar("Log in Failed", "wrong user name or password");
      }
    } catch (error) {

      print('Error: $error');
      isLoading.value = false;
    }
  }
}
