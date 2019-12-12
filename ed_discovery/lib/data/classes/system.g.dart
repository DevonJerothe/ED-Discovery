// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

System _$SystemFromJson(Map<String, dynamic> json) {
  return System(
    name: json['name'] as String,
    id: json['id'] as int,
  )
    ..id64 = json['id64'] as int
    ..url = json['url'] as String
    ..estimatedValue = json['estimatedValue'] as int
    ..estimatedValueMapped = json['estimatedValueMapped'] as int
    ..marketId = json['marketId'] as int
    ..sName = json['sName'] as String
    ..bodies = (json['bodies'] as List)
        .map((e) => Bodies.fromJson(e as Map<String, dynamic>))
        .toList()
    ..stations = (json['stations'] as List)
        .map((e) => Stations.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$SystemToJson(System instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'id64': instance.id64,
      'url': instance.url,
      'estimatedValue': instance.estimatedValue,
      'estimatedValueMapped': instance.estimatedValueMapped,
      'marketId': instance.marketId,
      'sName': instance.sName,
      'bodies': instance.bodies,
      'stations': instance.stations,
    };
