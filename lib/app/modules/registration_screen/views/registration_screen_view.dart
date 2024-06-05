import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:web_dev_interview_project/app/data/app_colors.dart';
import 'package:web_dev_interview_project/app/modules/registration_screen/controller/registration_screen_controller.dart';
import 'package:web_dev_interview_project/constant/app_text_styles.dart';
import 'package:web_dev_interview_project/constant/dynamicText.dart';
import 'package:web_dev_interview_project/widgets/customTextFormField.dart';
import 'package:web_dev_interview_project/widgets/custom_button.dart';


class RegistrationScreenView extends GetView<RegistrationScreenController> {
  const RegistrationScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(RegistrationScreenController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF395AB8).withOpacity(0.1),
                          //color of shadow
                          spreadRadius: 0,
                          //spread radius
                          blurRadius: 4,
                          // blur radius
                          offset:
                          const Offset(0, 3), // changes position of shadow
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child: Center(
                      child: Image.asset("assets/images/person.png", scale: 0.7,),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 5,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration:  BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFFF9472),
                            Color(0xFFF2709C),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF8B2F40).withOpacity(0.25),
                            //color of shadow
                            spreadRadius: 0,
                            //spread radius
                            blurRadius: 23,
                            // blur radius
                            offset:
                            const Offset(0, 14), // changes position of shadow
                          ),
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/images/camera.png"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
              CustomTextFormField(
                controller: controller.nameTextController,
                hintText: "Name",
                prefixIcon: "assets/images/person.png",
                scale: 0.85,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: controller.emailTextController,
                hintText: "Email",
                prefixIcon: "assets/images/email.png",
                prefixIconPadding: 0,
                scale: 0.85,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: controller.passwordTextController,
                hintText: "Password",
                prefixIcon: "assets/images/password.png",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: controller.confirmPasswordTextController,
                hintText: "Confirm Password",
                prefixIcon: "assets/images/password.png",
              ),

              const SizedBox(
                height: 50,
              ),
              CustomButton(
                onTap: () {},
                color: AppColors.logInButtonColor,
                height: 60,
                width: Get.width,
                text: DynamicText.signUp,
                textStyle: AppTextStyle.robotoWhiteTextW500Size17,
              ),
              const SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    onTap: () {},
                    color: Colors.white,
                    height: 56,
                    width: 56,
                    image: Image.asset("assets/images/facebook.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomButton(
                    onTap: () {},
                    color: Colors.white,
                    height: 56,
                    width: 56,
                    image: Image.asset("assets/images/google.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
