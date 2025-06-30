import 'package:coffie/model/product_model.dart';
import 'package:get/get.dart';

class CoffeeDetailController extends GetxController {
  late ProductModel product;

  @override
  void onInit() {
    super.onInit();
    product = Get.arguments as ProductModel;
  }
}
