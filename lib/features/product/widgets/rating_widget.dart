import 'package:flutter/material.dart';
import 'package:qtec_assignment/models/product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingWidget extends StatelessWidget {
  RatingWidget(this.product, {Key? key}) : super(key: key);

  Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: Row(
        children: [
          for (int i = 0; i < 5; i++)
            Icon(Icons.star, color: i < product.product_review_avg!.toInt() ? Colors.orange : Colors.black),
        ],
      ),
    );
  }
}
