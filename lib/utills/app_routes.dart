import 'package:coffie/view/screens/dashboard/dashboard.dart';
import 'package:coffie/view/screens/dashboard/dashboard_binding.dart';
import 'package:coffie/view/screens/landing/landing_binding.dart';
import 'package:coffie/view/screens/landing/landing_screen.dart';
import 'package:get/get.dart';
class AppRoutes {
  static const String landing = '/landing';
  static const String dashboard = '/dashboard';

  static final pages = [
    GetPage(
      name: landing,
      page: () => const LandingScreen(),
      binding: LandingBinding()
    ),
    GetPage(
      name: dashboard,
      page: () => const Dashboard(),
      binding: DashboardBinding()
    ),
  ];
}
