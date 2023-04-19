import 'package:bks_test/framework/api.dart';

class ApiProduct {
  Future<dynamic> getProducts() async {
    var r = await Api().apiJsonGet('products');
    return r;
  }
}
