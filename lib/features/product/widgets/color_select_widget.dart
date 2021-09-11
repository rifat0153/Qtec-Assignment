import 'package:flutter/material.dart';
import 'package:qtec_assignment/core/my_colors.dart';
import 'package:qtec_assignment/core/text_styles.dart';
import 'package:qtec_assignment/models/product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorSelectWidget extends StatelessWidget {
  ColorSelectWidget(
    this.product, {
    Key? key,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Select Color',
                style: MyTextStyles.extraBoldStyle(fontSize: 16.sp),
              ),
            ],
          ),
          Row(
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                  backgroundColor: Colors.white,
                  fixedSize: Size(64.w, 32.h),
                ),
                onPressed: () {},
                child: Text(
                  'Black',
                  style: MyTextStyles.buttonTextStyle(fontSize: 12.sp),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: MyColors.btn_yellow),
                  backgroundColor: Colors.yellow,
                  fixedSize: Size(64.w, 32.h),
                ),
                onPressed: () {},
                child: Text(
                  'Yellow',
                  style: MyTextStyles.buttonTextStyle(fontSize: 12.sp, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.red),
                  backgroundColor: Colors.white,
                  fixedSize: Size(64.w, 32.h),
                ),
                onPressed: () {},
                child: Text(
                  'Red',
                  style: MyTextStyles.buttonTextStyle(fontSize: 12.sp, color: MyColors.brand_color),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue),
                  backgroundColor: Colors.white,
                  fixedSize: Size(64.w, 32.h),
                ),
                onPressed: () {},
                child: Text(
                  'Blue',
                  style: MyTextStyles.buttonTextStyle(fontSize: 12.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          )
        ],
      ),
    );
  }
}
