import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/log_in_screen/bindings/log_in_screen_binding.dart';
import '../modules/log_in_screen/views/log_in_screen_view.dart';
import '../modules/my_account/bindings/my_account_binding.dart';
import '../modules/my_account/views/my_account_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOG_IN_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOG_IN_SCREEN,
      page: () => const LogInScreenView(),
      binding: LogInScreenBinding(),
    ),
    GetPage(
      name: _Paths.MY_ACCOUNT,
      page: () => const MyAccountView(),
      binding: MyAccountBinding(),
    ),
  ];
}
