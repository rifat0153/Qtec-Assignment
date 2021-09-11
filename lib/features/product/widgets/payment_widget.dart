import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qtec_assignment/core/my_colors.dart';
import 'package:qtec_assignment/core/text_styles.dart';
import 'package:qtec_assignment/models/product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodWidget extends StatelessWidget {
  PaymentMethodWidget(
    this.product, {
    Key? key,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Payment Method (Supported)',
                  style: MyTextStyles.extraBoldStyle(fontSize: 20.sp),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Wrap(
              spacing: 12.w,
              runSpacing: 4.h,
              children: [
                _PaymentMethod(
                  selected: true,
                  paymentMethod: 'Bkash',
                ),
                _PaymentMethod(
                  selected: false,
                  paymentMethod: 'Cash On delivery not available',
                ),
                _PaymentMethod(
                  selected: true,
                  paymentMethod: 'Bkash',
                ),
                _PaymentMethod(
                  selected: true,
                  paymentMethod: 'Bkash',
                ),
                _PaymentMethod(
                  selected: true,
                  paymentMethod: 'Bkash',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _PaymentMethod extends StatelessWidget {
  _PaymentMethod({Key? key, required this.selected, required this.paymentMethod}) : super(key: key);

  bool selected;
  String paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (selected) SvgPicture.asset('assets/svgs/select.svg'),
        if (!selected) SvgPicture.asset('assets/svgs/not_selected.svg'),
        SizedBox(
          width: 8.w,
        ),
        Text(
          paymentMethod,
          style: MyTextStyles.boldFontStyle(fontSize: 16.sp, color: MyColors.dark_2),
        ),
      ],
    );
  }
}
