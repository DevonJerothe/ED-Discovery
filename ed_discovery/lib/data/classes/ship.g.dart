// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ship _$ShipFromJson(Map<String, dynamic> json) {
  return Ship()
    ..name = json['name'] as String
    ..price = json['price'] as int;
}

Map<String, dynamic> _$ShipToJson(Ship instance) => <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };
