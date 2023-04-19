import 'dart:developer';

import 'package:bks_test/features/product/api_product.dart';
import 'package:bks_test/response/products.dart';
import 'package:get/get.dart';

class ControllerProduct extends GetxController {
  final ApiProduct api;
  ControllerProduct({required this.api});

  var loading = false.obs;
  var listProducts = List<Products>.empty().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getProducts();
    super.onInit();
  }

  getProducts() async {
    loading.value = true;
    try {
      var r = await api.getProducts();
      log('data product : $r');
      if (r["success"] == true) {
        var result = r["data"];
        var listData = (result as List)
            .map((result) => Products.fromJson(result))
            .toList();
        if (listData.isNotEmpty) {
          listProducts.clear();
          listProducts.addAll(listData);
        }
        loading.value = false;
      }
    } catch (e) {
      loading.value = false;
      print(e.toString());
    }
  }
}
