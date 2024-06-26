import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:web_dev_interview_project/app/data/app_colors.dart';
import 'package:web_dev_interview_project/app/modules/registration_screen/views/registration_screen_view.dart';
import 'package:web_dev_interview_project/app/routes/app_pages.dart';
import 'package:web_dev_interview_project/constant/app_text_styles.dart';
import 'package:web_dev_interview_project/constant/static_text.dart';
import 'package:web_dev_interview_project/widgets/customTextFormField.dart';
import 'package:web_dev_interview_project/widgets/custom_button.dart';

import '../controllers/log_in_screen_controller.dart';

class LogInScreenView extends GetView<LogInScreenController> {
  const LogInScreenView({super.key});

  @override
  Widget build(BuildContext context) {
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
              Container(
                height: Get.height * 0.1,
                width: Get.width * 0.35,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/dokanLogo.png"),
                        fit: BoxFit.contain)),
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
              Text(
                StaticText.signIn,
                style: AppTextStyle.robotoBlackW700Size25,
              ),
              SizedBox(
                height: Get.height * 0.05,
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
              Obx(
                () => CustomTextFormField(
                  controller: controller.passwordTextController,
                  hintText: "Password",
                  prefixIcon: "assets/images/password.png",
                  suffixIcon: InkWell(
                    onTap: () {
                      controller.makePassVisible.value = !controller.makePassVisible.value ;
                      print(controller.makePassVisible.value);
                    },
                    child: controller.makePassVisible.value == true
                        ? const Icon(
                            Icons.remove_red_eye,
                            color: AppColors.iconColor,
                          )
                        : Image.asset("assets/images/eyes.png"),
                  ),
                  obsCureText:
                      controller.makePassVisible.value == true ? false : true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  StaticText.forgetPassword,
                  style: AppTextStyle.robotoGreyTextW400Size13,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Obx(
                () => controller.isLoading.value == true
                    ? const SizedBox(
                        width: 60,
                        height: 60,
                        child: CircularProgressIndicator(
                          color: AppColors.logInButtonColor,
                        ),
                      )
                    : CustomButton(
                        onTap: () => controller.loginUser(
                            controller.emailTextController.text.toString(),
                            controller.passwordTextController.text.toString()),
                        color: AppColors.logInButtonColor,
                        height: 60,
                        width: Get.width,
                        text: StaticText.logIn,
                        textStyle: AppTextStyle.robotoWhiteTextW500Size17,
                      ),
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
              InkWell(
                onTap: () => Get.toNamed(Routes.REGISTRATION_SCREEN),
                child: Text(
                  StaticText.createNewAccount,
                  style: AppTextStyle.robotoBlackTextW300Size17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
