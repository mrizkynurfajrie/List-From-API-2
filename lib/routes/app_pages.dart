import 'package:bks_test/features/product/page_product.dart';
import 'package:bks_test/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.products,
      page: () => const PageProduct(),
    ),
  ];
}
