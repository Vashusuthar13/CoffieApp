import 'package:coffie/utills/app_routes.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  void goToDashboard() {
    Get.toNamed(AppRoutes.dashboard);
  }
}
