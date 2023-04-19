import 'package:bks_test/response/products.dart';
import 'package:bks_test/shared/constants/colors.dart';
import 'package:bks_test/shared/constants/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItems extends StatelessWidget {
  final Products result;

  const CardItems({
    Key? key,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(color: AppColor.whiteColor),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xff333333).withOpacity(.15),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(0, 1)),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: 'https://recruitment.pt-bks.com/assets/Rokok 1.png',
                progressIndicatorBuilder: (context, url, progress) =>
                    const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                ),
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Text(
                  result.name!.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColor.neutral,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width: 136,
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Text(
                  result.qty!.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColor.neutral,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                child: Row(
                  children: [
                    Text(
                      '',
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColor.whiteColor,
                      ),
                    ),
                    horizontalSpace(4.w),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
