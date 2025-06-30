import 'package:get/get.dart';
import 'coffie_detail_controller.dart';

class CoffieDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CoffeeDetailController());
  }
}
