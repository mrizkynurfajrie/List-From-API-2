import 'package:bks_test/features/product/api_product.dart';
import 'package:bks_test/features/product/controller_product.dart';
import 'package:get/get.dart';

class BindingProduct implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerProduct(api: ApiProduct()));
  }
}
