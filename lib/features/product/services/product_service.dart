import 'dart:convert';

import 'package:get/get.dart';
import 'package:qtec_assignment/models/product.dart';
import 'package:http/http.dart' as http;

abstract class BaseProductService {
  Future<ProductState> getProduct({required String url});
}

class ProductService extends GetConnect implements BaseProductService {
  @override
  Future<ProductState> getProduct({required String url}) async {
    try {
      final productResponse = await get(
        url,
        decoder: (data) => Product.fromJson(data as Map<String, dynamic>),
      );

      if (productResponse.body != null) {
        return ProductState.data(productResponse.body!);
      } else {
        throw Error('Product Not Loaded');
      }
    } catch (e, s) {
      return ProductState.error(e);
    }
  }
}
