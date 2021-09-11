import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qtec_assignment/features/product/controllers/product_controller.dart';

class ProductView extends StatelessWidget {
  ProductView({Key? key}) : super(key: key);
  static const route = 'product_view';

  final ProductController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Container(
            child: controller.getProduct().when(
                data: (data) => Column(
                      children: [
                        Text(data.product_name.toString()),
                        Text(data.category_list!.first.category_name.toString()),
                        Text(data.brand.toString()),
                        Text(data.product_price.toString()),
                        Text(data.details_images.toString()),
                      ],
                    ),
                empty: () => const Text('data'),
                loading: () => const Center(child: CupertinoActivityIndicator()),
                error: (e) => Text(e.toString())),
          ),
        ),
      ),
    );
  }
}
