import 'package:coffie/utills/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'landing_controller.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.find<LandingController>();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.6,
                child: Image.asset(
                  'assets/images/landing.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),

              Positioned(
                top: size.height * 0.57,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                      child: Text(
                        'Fall in Love with\nCoffee in Blissful Delight!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.07,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      'Welcome to our cozy coffee corner, where\nevery cup is a delightful for you.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: size.width * 0.08),
                      child: SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          onPressed: () {
                              controller.goToDashboard();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Get Started',
                            style: TextStyle(fontSize: 16,color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
