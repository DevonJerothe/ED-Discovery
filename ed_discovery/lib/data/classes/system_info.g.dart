// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemInfo _$SystemInfoFromJson(Map<String, dynamic> json) {
  return SystemInfo(
    json['information'] == null
        ? null
        : Information.fromJson(json['information'] as Map<String, dynamic>),
    json['name'] as String,
  )
    ..primaryStar = json['primaryStar'] == null
        ? null
        : Bodies.fromJson(json['primaryStar'] as Map<String, dynamic>)
    ..permitName = json['permitName'] as String
    ..requirPermit = json['requirPermit'] as bool;
}

Map<String, dynamic> _$SystemInfoToJson(SystemInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'information': instance.information,
      'primaryStar': instance.primaryStar,
      'permitName': instance.permitName,
      'requirPermit': instance.requirPermit,
    };

Information _$InformationFromJson(Map<String, dynamic> json) {
  return Information(
    allegiance: json['allegiance'] as String,
    government: json['government'] as String,
    economy: json['economy'] as String,
    faction: json['faction'] as String,
    factionState: json['factionState'] as String,
    population: json['population'] as int,
    security: json['security'] as String,
  );
}

Map<String, dynamic> _$InformationToJson(Information instance) =>
    <String, dynamic>{
      'allegiance': instance.allegiance,
      'government': instance.government,
      'faction': instance.faction,
      'factionState': instance.factionState,
      'population': instance.population,
      'security': instance.security,
      'economy': instance.economy,
    };
