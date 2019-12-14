// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Module _$ModuleFromJson(Map<String, dynamic> json) {
  return Module()
    ..category = json['category'] as String
    ..ed_symbol = json['ed_symbol'] as String
    ..name = json['name'] as String
    ..rating = json['rating'] as String
    ..ship = json['ship'] as String
    ..mass = json['mass'] as int
    ..price = json['price'] as int;
}

Map<String, dynamic> _$ModuleToJson(Module instance) => <String, dynamic>{
      'category': instance.category,
      'ed_symbol': instance.ed_symbol,
      'name': instance.name,
      'rating': instance.rating,
      'ship': instance.ship,
      'mass': instance.mass,
      'price': instance.price,
    };
