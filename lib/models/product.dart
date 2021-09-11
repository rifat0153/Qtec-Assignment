import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

Product productFromJson(String str) => Product.fromJson(json.decode(str) as Map<String, dynamic>);

String productToJson(Product data) => json.encode(data.toJson());

@freezed
abstract class Product with _$Product {
  const factory Product({
    int? id,
    int? maximum_order,
    @JsonKey(fromJson: categoryListFromMap, toJson: categoryListToMap) List<CategoryList>? category_list,
    String? product_name,
    String? sku,
    String? slug,
    String? buisness_name,
    int? seller_id,
    String? seller_slug,
    bool? will_show_emi,
    @JsonKey(fromJson: brandFromMap, toJson: brandToMap) Brand? brand,
    String? note,
    int? stock,
    bool? pre_order,
    int? booking_price,
    int? product_price,
    String? discount_charge,
    String? image,
    List<String>? details_images,
    bool? is_event,
    String? event_id,
    bool? highlight,
    String? highlight_id,
    bool? groupping,
    String? groupping_id,
    String? campaign_section_id,
    bool? campaign_section,
    String? message,
    bool? seo,
    String? meta_keyword,
    String? meta_description,
    String? variation,
    String? banner_image,
    String? banner_image_link,
    String? attribute_value,
    String? icon_specification,
    int? product_review_avg,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class ProductState with _$ProductState {
  const factory ProductState.data(Product product) = Data;
  const factory ProductState.empty() = Empty;
  const factory ProductState.loading() = Loading;
  const factory ProductState.error(Object error) = Error;
}

@freezed
abstract class Brand with _$Brand {
  const factory Brand({
    int? id,
    String? name,
    String? slug,
    String? image,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

Map<String, dynamic>? brandToMap(Brand? brand) {
  if (brand != null) {
    return brand.toJson();
  } else {
    return null;
  }
}

Brand? brandFromMap(Map<String, dynamic>? json) {
  if (json != null) {
    return Brand.fromJson(json);
  } else {
    return null;
  }
}

@freezed
abstract class CategoryList with _$CategoryList {
  const factory CategoryList({
    int? id,
    String? category_name,
    String? slug,
    bool? is_inactive,
    String? image,
    String? category_icon,
    String? parent,
    String? parent_slug,
  }) = _CategoryList;

  factory CategoryList.fromJson(Map<String, dynamic> json) => _$CategoryListFromJson(json);
}

List<Map<String, dynamic>>? categoryListToMap(List<CategoryList>? categoryList) {
  if (categoryList != null) {
    final List<Map<String, dynamic>> categoryMapList = categoryList.map((category) => category.toJson()).toList();

    return categoryMapList;
  } else {
    return null;
  }
}

List<CategoryList>? categoryListFromMap(List<dynamic>? json) {
  if (json != null) {
    final List<CategoryList> list = json.map((cat) => CategoryList.fromJson(cat as Map<String, dynamic>)).toList();

    return list;
  } else {
    return null;
  }
}







