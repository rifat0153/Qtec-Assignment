import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qtec_assignment/core/my_colors.dart';
import 'package:qtec_assignment/core/text_styles.dart';
import 'package:qtec_assignment/models/product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryInfoWidget extends StatelessWidget {
  DeliveryInfoWidget(
    this.product, {
    Key? key,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 28.h),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Delivery Information',
                style: MyTextStyles.extraBoldStyle(fontSize: 20.sp),
              ),
            ],
          ),
          SizedBox(
            height: 14.h,
          ),
          Row(
            children: [
              SvgPicture.asset('assets/svgs/truck.svg'),
              RichText(
                text: TextSpan(
                  text: ' Sent From ',
                  style: MyTextStyles.boldFontStyle(color: MyColors.dark_2, fontSize: 16.sp),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Dhaka, ',
                      style: MyTextStyles.boldFontStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    TextSpan(
                      text: 'will arrive in ',
                      style: MyTextStyles.boldFontStyle(
                        color: MyColors.dark_2,
                        fontSize: 16.sp,
                      ),
                    ),
                    TextSpan(
                      text: '7/10 ',
                      style: MyTextStyles.boldFontStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    TextSpan(
                      text: 'workdays',
                      style: MyTextStyles.boldFontStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
