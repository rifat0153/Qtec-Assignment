import 'dart:convert';

import 'package:get/get.dart';
import 'package:qtec_assignment/models/product.dart';
import 'package:http/http.dart' as http;

abstract class BaseProductService {
  Future<ProductState> getProduct({required String url});
}

class ProductService extends GetConnect implements BaseProductService {
  @override
  void onInit() {
    super.onInit();

    httpClient.baseUrl = 'http://3.1.180.10/api/';
  }

  @override
  Future<ProductState> getProduct({required String url}) async {
    final client = http.Client();

    // try {
    //   final http.Response response = await client.get(
    //     Uri.parse(url),
    //     headers: {"Content-Type": "application/json"},
    //   ).timeout(const Duration(seconds: 5));

    //   final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    //   print(body);

    //   final Product product = Product.fromJson(body);

    //   return ProductState.data(product);
    // } catch (e) {
    //   print(e);
    //   return ProductState.error(e);
    // } finally {
    //   client.close();
    // }

    try {
      final productResponse = await get(
        url,
        decoder: (data) => Product.fromJson(data as Map<String, dynamic>),
      );

      print(productResponse.body);

      if (productResponse.body != null) {
        return ProductState.data(productResponse.body!);
      } else {
        throw Error('Product Not Loaded');
      }
    } catch (e, s) {
      print(e);
      print(s);
      return ProductState.error(e);
    }
  }
}
