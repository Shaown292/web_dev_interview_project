import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:web_dev_interview_project/app/modules/cart/views/cart_view.dart';
import 'package:web_dev_interview_project/app/modules/category/views/category_view.dart';
import 'package:web_dev_interview_project/app/modules/home/views/home_view.dart';
import 'package:web_dev_interview_project/app/modules/profile/views/profile_view.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<PersistentTabConfig> _tabs() => [
          PersistentTabConfig(
            screen: const HomeView(),
            item: ItemConfig(
              icon: const Icon(Icons.home),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: const CategoryView(),
            item: ItemConfig(
              icon: const Icon(Icons.message),
              title: "Messages",
            ),
          ),
          PersistentTabConfig(
            screen: const CartView(),
            item: ItemConfig(
              icon: const Icon(Icons.settings),
              title: "Settings",
            ),
          ),
          PersistentTabConfig(
            screen: const ProfileView(),
            item: ItemConfig(
              icon: const Icon(Icons.settings),
              title: "Settings",
            ),
          ),
        ];
    return PersistentTabView(
      tabs: _tabs(),
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}
