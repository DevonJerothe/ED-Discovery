// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stations _$StationsFromJson(Map<String, dynamic> json) {
  return Stations()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..sName = json['sName'] as String
    ..type = json['type'] as String
    ..distanceToArrival = json['distanceToArrival'] as int
    ..allegiance = json['allegiance'] as String
    ..government = json['government'] as String
    ..economy = json['economy'] as String
    ..haveMarket = json['haveMarket'] as bool
    ..haveShipyard = json['haveShipyard'] as bool
    ..controllingFaction =
        Factions.fromJson(json['controllingFaction'] as Map<String, dynamic>);
}

Map<String, dynamic> _$StationsToJson(Stations instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sName': instance.sName,
      'type': instance.type,
      'distanceToArrival': instance.distanceToArrival,
      'allegiance': instance.allegiance,
      'government': instance.government,
      'economy': instance.economy,
      'haveMarket': instance.haveMarket,
      'haveShipyard': instance.haveShipyard,
      'controllingFaction': instance.controllingFaction,
    };
