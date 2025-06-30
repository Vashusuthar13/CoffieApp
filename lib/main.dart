import 'package:coffie/utills/app_routes.dart';
import 'package:coffie/view/screens/bottom_bar/bottom_bar_controller.dart';
import 'package:coffie/view/screens/coffie_detail_screen/coffie_detail_controller.dart';
import 'package:coffie/view/screens/dashboard/dashboard_controller.dart';
import 'package:coffie/view/screens/landing/landing_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
  Get.put(DashboardController());
  Get.put(BottomNavController());
  Get.put(LandingController());
  Get.put(CoffeeDetailController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.soraTextTheme(
        Theme.of(context).textTheme,
        )
      ),
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.bottombar,
    );
  }
}
