import 'package:flutter/material.dart';
import 'package:qtec_assignment/core/my_colors.dart';
import 'package:qtec_assignment/core/text_styles.dart';
import 'package:qtec_assignment/models/product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdditionalInfoWidget extends StatefulWidget {
  AdditionalInfoWidget(
    this.product, {
    Key? key,
  }) : super(key: key);

  final Product product;

  @override
  _AdditionalInfoWidgetState createState() => _AdditionalInfoWidgetState();
}

class _AdditionalInfoWidgetState extends State<AdditionalInfoWidget> {
  bool expanded = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        child: ExpansionPanelList(
          elevation: 0,
          expansionCallback: (index, isOpen) {
            setState(() {
              expanded = !expanded;
            });
          },
          expandedHeaderPadding: EdgeInsets.zero,
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              backgroundColor: MyColors.bg_product,
              isExpanded: expanded,
              headerBuilder: (_, isOpen) {
                return Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Additional Information',
                    style: MyTextStyles.extraBoldStyle(fontSize: 20.sp),
                  ),
                );
              },
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const _BulletPoint(
                      text: ' L, M, S, XS',
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const _BulletPoint(
                      text: ' Colors: Black, Blue, Red',
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class _BulletPoint extends StatelessWidget {
  const _BulletPoint({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "• ",
          style: MyTextStyles.boldFontStyle(color: MyColors.dark_2),
        ),
        Expanded(
          child: Text(
            text,
            style: MyTextStyles.boldFontStyle(color: MyColors.dark_2),
          ),
        ),
      ],
    );
  }
}
