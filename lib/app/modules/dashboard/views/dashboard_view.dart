import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:web_dev_interview_project/app/modules/cart/views/cart_view.dart';
import 'package:web_dev_interview_project/app/modules/category/views/category_view.dart';
import 'package:web_dev_interview_project/app/modules/home/views/home_view.dart';
import 'package:web_dev_interview_project/app/modules/profile/views/profile_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    List<PersistentTabConfig> _tabs() => [
      PersistentTabConfig(
        screen: const HomeView(),
        item: ItemConfig(
          icon:  Image.asset("assets/images/home.png"),
        ),
      ),
      PersistentTabConfig(
        screen: const CategoryView(),
        item: ItemConfig(
          icon:  Image.asset("assets/images/category.png"),
        ),
      ),
      PersistentTabConfig(
        screen: const CartView(),
        item: ItemConfig(
          icon: Image.asset("assets/images/cart.png"),
        ),
      ),
      PersistentTabConfig(
        screen: const ProfileView(),
        item: ItemConfig(
          icon: Image.asset("assets/images/profile.png"),
        ),
      ),
    ];
    return PersistentTabView(
      tabs: _tabs(),
      navBarBuilder: (navBarConfig) => Style3BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration:  NavBarDecoration(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30),),
          color: Colors.white.withOpacity(0.8),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF395AB8).withOpacity(0.08), //color of shadow
              spreadRadius: 0, //spread radius
              blurRadius: 14, // blur radius
              offset: const Offset(0, -10), // changes position of shadow
            ),
            //you can set more BoxShadow() here
          ],
        ),
      ),
    );
  }
}
