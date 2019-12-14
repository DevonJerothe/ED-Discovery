// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commodity _$CommodityFromJson(Map<String, dynamic> json) {
  return Commodity()
    ..name = json['name'] as String
    ..buy_price = (json['buy_price'] as num)?.toDouble()
    ..commodity = json['commodity'] as String
    ..demand = json['demand'] as int
    ..sell_price = json['sell_price'] as int
    ..supply = json['supply'] as int;
}

Map<String, dynamic> _$CommodityToJson(Commodity instance) => <String, dynamic>{
      'name': instance.name,
      'buy_price': instance.buy_price,
      'commodity': instance.commodity,
      'demand': instance.demand,
      'sell_price': instance.sell_price,
      'supply': instance.supply,
    };
