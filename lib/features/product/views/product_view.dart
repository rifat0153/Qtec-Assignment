import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qtec_assignment/core/my_colors.dart';
import 'package:qtec_assignment/core/text_styles.dart';
import 'package:qtec_assignment/features/product/controllers/product_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qtec_assignment/features/product/widgets/color_select_widget.dart';
import 'package:qtec_assignment/features/product/widgets/delivery_info_widget.dart';
import 'package:qtec_assignment/features/product/widgets/payment_widget.dart';
import 'package:qtec_assignment/features/product/widgets/pricing_widget.dart';
import 'package:qtec_assignment/features/product/widgets/rating_widget.dart';
import 'package:qtec_assignment/features/product/widgets/title_widget.dart';
import 'package:qtec_assignment/models/product.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);
  static const route = 'product_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg_product,
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.chevron_left, color: Colors.black),
        titleSpacing: 0,
        title: const Text(
          'Product Details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          const Icon(Icons.share, color: Colors.black),
          SizedBox(width: 19.w),
        ],
        backgroundColor: Colors.white,
      ),
      body: SafeArea(child: _BuildBody()),
    );
  }
}

class _BuildBody extends StatelessWidget {
  _BuildBody({Key? key}) : super(key: key);
  final ProductController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: controller.getProduct().when(
            data: (product) => SingleChildScrollView(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.r),
                          bottomRight: Radius.circular(15.r),
                        ),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              TitleWidget(product),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                                child: Text(
                                  product.product_name.toString(),
                                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
                                ),
                              ),
                              PricingWidget(product),
                              RatingWidget(product),
                              ColorSelectWidget(product),
                            ],
                          ),
                        ),
                      ),
                      DeliveryInfoWidget(product),
                      PaymentMethodWidget(product),
                    ],
                  ),
                ),
            empty: () => const Text('data'),
            loading: () => const Center(child: CupertinoActivityIndicator()),
            error: (e) => Text(e.toString())),
      ),
    );
  }
}
