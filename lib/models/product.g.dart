// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    id: json['id'] as int?,
    maximum_order: json['maximum_order'] as int?,
    category_list: categoryListFromMap(json['category_list'] as List?),
    product_name: json['product_name'] as String?,
    sku: json['sku'] as String?,
    slug: json['slug'] as String?,
    buisness_name: json['buisness_name'] as String?,
    seller_id: json['seller_id'] as int?,
    seller_slug: json['seller_slug'] as String?,
    will_show_emi: json['will_show_emi'] as bool?,
    brand: brandFromMap(json['brand'] as Map<String, dynamic>?),
    note: json['note'] as String?,
    stock: json['stock'] as int?,
    pre_order: json['pre_order'] as bool?,
    booking_price: json['booking_price'] as int?,
    product_price: json['product_price'] as int?,
    discount_charge: json['discount_charge'] as String?,
    image: json['image'] as String?,
    details_images: (json['details_images'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    is_event: json['is_event'] as bool?,
    event_id: json['event_id'] as String?,
    highlight: json['highlight'] as bool?,
    highlight_id: json['highlight_id'] as String?,
    groupping: json['groupping'] as bool?,
    groupping_id: json['groupping_id'] as String?,
    campaign_section_id: json['campaign_section_id'] as String?,
    campaign_section: json['campaign_section'] as bool?,
    message: json['message'] as String?,
    seo: json['seo'] as bool?,
    meta_keyword: json['meta_keyword'] as String?,
    meta_description: json['meta_description'] as String?,
    variation: json['variation'] as String?,
    banner_image: json['banner_image'] as String?,
    banner_image_link: json['banner_image_link'] as String?,
    attribute_value: json['attribute_value'] as String?,
    icon_specification: json['icon_specification'] as String?,
    product_review_avg: json['product_review_avg'] as int?,
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maximum_order': instance.maximum_order,
      'category_list': categoryListToMap(instance.category_list),
      'product_name': instance.product_name,
      'sku': instance.sku,
      'slug': instance.slug,
      'buisness_name': instance.buisness_name,
      'seller_id': instance.seller_id,
      'seller_slug': instance.seller_slug,
      'will_show_emi': instance.will_show_emi,
      'brand': brandToMap(instance.brand),
      'note': instance.note,
      'stock': instance.stock,
      'pre_order': instance.pre_order,
      'booking_price': instance.booking_price,
      'product_price': instance.product_price,
      'discount_charge': instance.discount_charge,
      'image': instance.image,
      'details_images': instance.details_images,
      'is_event': instance.is_event,
      'event_id': instance.event_id,
      'highlight': instance.highlight,
      'highlight_id': instance.highlight_id,
      'groupping': instance.groupping,
      'groupping_id': instance.groupping_id,
      'campaign_section_id': instance.campaign_section_id,
      'campaign_section': instance.campaign_section,
      'message': instance.message,
      'seo': instance.seo,
      'meta_keyword': instance.meta_keyword,
      'meta_description': instance.meta_description,
      'variation': instance.variation,
      'banner_image': instance.banner_image,
      'banner_image_link': instance.banner_image_link,
      'attribute_value': instance.attribute_value,
      'icon_specification': instance.icon_specification,
      'product_review_avg': instance.product_review_avg,
    };

_$_Brand _$_$_BrandFromJson(Map<String, dynamic> json) {
  return _$_Brand(
    id: json['id'] as int?,
    name: json['name'] as String?,
    slug: json['slug'] as String?,
    image: json['image'] as String?,
  );
}

Map<String, dynamic> _$_$_BrandToJson(_$_Brand instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
    };

_$_CategoryList _$_$_CategoryListFromJson(Map<String, dynamic> json) {
  return _$_CategoryList(
    id: json['id'] as int?,
    category_name: json['category_name'] as String?,
    slug: json['slug'] as String?,
    is_inactive: json['is_inactive'] as bool?,
    image: json['image'] as String?,
    category_icon: json['category_icon'] as String?,
    parent: json['parent'] as String?,
    parent_slug: json['parent_slug'] as String?,
  );
}

Map<String, dynamic> _$_$_CategoryListToJson(_$_CategoryList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_name': instance.category_name,
      'slug': instance.slug,
      'is_inactive': instance.is_inactive,
      'image': instance.image,
      'category_icon': instance.category_icon,
      'parent': instance.parent,
      'parent_slug': instance.parent_slug,
    };
