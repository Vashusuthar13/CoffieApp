import 'package:coffie/utills/app_routes.dart';
import 'package:coffie/view/screens/landing/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
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
      initialRoute: AppRoutes.landing,
    );
  }
}
