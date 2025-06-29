import 'package:coffie/utills/app_colors.dart';
import 'package:coffie/view/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'bottom_bar_controller.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key});

  final BottomNavController controller = Get.find<BottomNavController>();

  final List<Widget> pages = [
    Dashboard(),
    Center(child: Text("Favorites")),
    Center(child: Text("Cart")),
    Center(child: Text("Notifications")),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: pages[controller.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: AppColors.primary,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(color: AppColors.primary),
        enableFeedback: false,
        onTap: controller.changeIndex,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/Home.svg',
                  color: controller.selectedIndex.value == 0
                      ? AppColors.primary
                      : Colors.grey,
                ),
                const SizedBox(height: 4),
                Container(
                  width: 10,
                  height: 4,
                  decoration: BoxDecoration(
                    color: controller.selectedIndex.value == 0
                        ? AppColors.primary
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(30)
                  ),
                )
              ],
            ),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/Heart.svg',
                  color: controller.selectedIndex.value == 1
                      ? AppColors.primary
                      : Colors.grey,
                ),
                const SizedBox(height: 4),
                Container(
                  width: 10,
                  height: 4,
                  decoration: BoxDecoration(
                      color: controller.selectedIndex.value == 1
                          ? AppColors.primary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                )
              ],
            ),
            label: 'Fav',
          ),


          BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/Bag.svg',
                  color: controller.selectedIndex.value == 2
                      ? AppColors.primary
                      : Colors.grey,
                ),
                const SizedBox(height: 4),
                Container(
                  width: 10,
                  height: 4,
                  decoration: BoxDecoration(
                      color: controller.selectedIndex.value == 2
                          ? AppColors.primary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                )
              ],
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/Notification.svg',
                  color: controller.selectedIndex.value == 3
                      ? AppColors.primary
                      : Colors.grey,
                ),
                const SizedBox(height: 4),
                Container(
                  width: 10,
                  height: 4,
                  decoration: BoxDecoration(
                      color: controller.selectedIndex.value == 3
                          ? AppColors.primary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                )
              ],
            ),
            label: 'Notification',
          ),

        ],
      ),
    ));
  }
}
