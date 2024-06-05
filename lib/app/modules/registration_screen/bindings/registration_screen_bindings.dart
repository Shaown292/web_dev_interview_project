import 'package:get/get.dart';
import 'package:web_dev_interview_project/app/modules/registration_screen/controller/registration_screen_controller.dart';


class RegistrationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationScreenController>(
          () => RegistrationScreenController(),
    );
  }
}
