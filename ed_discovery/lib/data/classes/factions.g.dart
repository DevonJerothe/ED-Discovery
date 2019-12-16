// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'factions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Factions _$FactionsFromJson(Map<String, dynamic> json) {
  return Factions()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..allegiance = json['allegiance'] as String
    ..government = json['government'] as String
    ..influence = (json['influence'] as num)?.toDouble()
    ..state = json['state'] as String
    ..isPlayer = json['isPlayer'] as bool;
}

Map<String, dynamic> _$FactionsToJson(Factions instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'allegiance': instance.allegiance,
      'government': instance.government,
      'influence': instance.influence,
      'state': instance.state,
      'isPlayer': instance.isPlayer,
    };
