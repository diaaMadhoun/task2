import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task2/model/bn_item.dart';
import 'package:task2/screens/buy_car_screen.dart';
import 'package:task2/screens/community_screen.dart';
import 'package:task2/screens/home_screen.dart';
import 'package:task2/screens/profile_screen.dart';

import '../controllers/bn_screen_controller.dart';

class BnScreen extends StatelessWidget {
  const BnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BnController>(
      init: BnController(),
      builder: (controller) {
        final List<BnItem> items = <BnItem>[
          const BnItem('Home', HomeScreen()),
          const BnItem('Buy car', BuyCarScreen()),
          const BnItem('community', CommunityScreen()),
          const BnItem('profile', ProfileScreen()),
        ];

        return Scaffold(
          body: items[controller.currentIndex.value].widget,
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              elevation: 10,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: const Color(0xFF1DB854),
              unselectedItemColor: Colors.grey.shade400,
              onTap: (int index) {
                controller.changePage(index);
              },
              currentIndex: controller.currentIndex.value,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/home_outlined.svg'),
                  label: 'Home',
                  activeIcon: SvgPicture.asset('assets/icons/home.svg'),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/buy-car_outlined.svg'),
                  label: 'Buy car',
                  activeIcon: SvgPicture.asset('assets/icons/buy-car.svg'),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/community_outlined.svg'),
                  label: 'Community',
                  activeIcon: SvgPicture.asset('assets/icons/community.svg'),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/profile_outlined.svg'),
                  label: 'Profile',
                  activeIcon: SvgPicture.asset('assets/icons/profile.svg'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
