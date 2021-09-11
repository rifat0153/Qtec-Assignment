import 'package:flutter/material.dart';
import 'package:qtec_assignment/core/my_colors.dart';
import 'package:qtec_assignment/core/text_styles.dart';
import 'package:qtec_assignment/models/product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PricingWidget extends StatelessWidget {
  const PricingWidget(
    this.product, {
    Key? key,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 16.w),
      child: Row(
        children: [
          Text(
            'BDT',
            style: MyTextStyles.extraBoldStyle(color: Colors.red, fontSize: 20.sp),
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            product.product_price.toString(),
            style: MyTextStyles.extraBoldStyle(color: Colors.red, fontSize: 20.sp),
          ),
          SizedBox(
            width: 16.w,
          ),
          RichText(
            text: TextSpan(
              text: 'BDT ',
              style: MyTextStyles.lineThrough(color: Colors.grey, fontSize: 16.sp),
              children: <TextSpan>[
                TextSpan(
                  text: '200000',
                  style: MyTextStyles.lineThrough(color: Colors.grey, fontSize: 16.sp),
                ),
              ],
            ),
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.r),
            child: Container(
              width: 64.w,
              height: 23.h,
              alignment: Alignment.center,
              color: MyColors.brand_color,
              child: Text(
                '50% Off',
                style: MyTextStyles.whiteStyle(fontSize: 14.sp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
