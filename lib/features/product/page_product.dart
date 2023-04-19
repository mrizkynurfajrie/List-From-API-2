import 'package:bks_test/features/product/controller_product.dart';
import 'package:bks_test/features/product/widget/card_item.dart';
import 'package:bks_test/shared/constants/colors.dart';
import 'package:bks_test/shared/widgets/loading_indicator.dart';
import 'package:bks_test/shared/widgets/page_decoration_top.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageProduct extends GetView<ControllerProduct> {
  const PageProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: '',
      backgroundColor: AppColor.neutral.shade200,
      toolbarTitleColor: AppColor.whiteColor,
      toolbarColor: AppColor.primaryColor,
      enableBack: false,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      center: Padding(
        padding: const EdgeInsets.only(left: 120),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Cigar Mobile',
              style: TextStyle(
                fontSize: 16,
                color: AppColor.whiteColor,
              ),
            ),
            Icon(
              CupertinoIcons.cart_fill,
              size: 14,
              color: AppColor.whiteColor,
            ),
          ],
        ),
      ),
      child: Obx(
        () => SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
                width: Get.width,
                height: Get.height,
                child: controller.loading.isFalse
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: controller.listProducts.length,
                                itemBuilder: ((context, index) => CardItems(
                                      result: controller.listProducts[index],
                                    ))),
                          ),
                        ],
                      )
                    : loadingIndicator(context)),
          ),
        ),
      ),
    );
  }
}
