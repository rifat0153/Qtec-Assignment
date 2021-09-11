import 'package:get/get.dart';
import 'package:qtec_assignment/features/product/services/product_service.dart';
import 'package:qtec_assignment/models/product.dart';

class ProductController extends GetxController {
  ProductController(this._productService);
  final ProductService _productService;

  @override
  void onInit() {
    super.onInit();

    retriveProduct();
  }

  Rx<ProductState> _product = const ProductState.empty().obs;
  ProductState getProduct() => _product.value;

  Future<void> retriveProduct() async {
    _product.value = const ProductState.loading();

    _product.value = await _productService.getProduct(
      url: 'http://3.1.180.10/api/product-core/suzuki-gsx-r150-fi-dual-channel-abs-yvj2/0/',
    );
  }
}
