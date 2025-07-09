import 'package:get/get.dart';
import 'package:coffie/view/screens/coffie_detail_screen/coffie_detail_controller.dart';
import 'package:coffie/model/product_model.dart';

class CoffeeDetailBinding extends Bindings {
  @override
  void dependencies() {
    final product = Get.arguments as ProductModel;
    Get.put(CoffeeDetailController(product: product));
  }
}
