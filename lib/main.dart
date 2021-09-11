import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qtec_assignment/core/text_styles.dart';
import 'package:qtec_assignment/features/product/controllers/product_controller.dart';
import 'package:qtec_assignment/features/product/services/product_service.dart';
import 'package:qtec_assignment/features/product/views/product_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 700),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: GoogleFonts.roboto().fontFamily),
        getPages: [
          GetPage(
            name: '/',
            page: () => const MyHomePage(),
          ),
          GetPage(
            name: ProductView.route,
            page: () => const ProductView(),
            transition: Transition.rightToLeft,
            binding: BindingsBuilder(() {
              Get.lazyPut(() => ProductController(ProductService()));
            }),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Get.toNamed(ProductView.route);
          },
          child: Text(
            'Go to Product details page',
            style: MyTextStyles.extraBoldStyle(),
          ),
        ),
      ),
    );
  }
}
