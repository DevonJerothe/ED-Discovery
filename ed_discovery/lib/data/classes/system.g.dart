// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

System _$SystemFromJson(Map<String, dynamic> json) {
  return System(
    stations: (json['stations'] as List)
        ?.map((e) =>
            e == null ? null : Stations.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..allegiance = json['allegiance'] as String
    ..controlling_minor_faction = json['controlling_minor_faction'] as String
    ..distance = json['distance'] as int
    ..edsm_id = json['edsm_id'] as int
    ..government = json['government'] as String
    ..id = json['id'] as String
    ..id64 = json['id64'] as int
    ..name = json['name'] as String
    ..needs_permit = json['needs_permit'] as bool
    ..population = json['population'] as int
    ..primary_economy = json['primary_economy'] as String
    ..security = json['security'] as String
    ..state = json['state'] as String
    ..x = (json['x'] as num)?.toDouble()
    ..y = (json['y'] as num)?.toDouble()
    ..z = (json['z'] as num)?.toDouble()
    ..bodies = (json['bodies'] as List)
        ?.map((e) =>
            e == null ? null : Bodies.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SystemToJson(System instance) => <String, dynamic>{
      'allegiance': instance.allegiance,
      'controlling_minor_faction': instance.controlling_minor_faction,
      'distance': instance.distance,
      'edsm_id': instance.edsm_id,
      'government': instance.government,
      'id': instance.id,
      'id64': instance.id64,
      'name': instance.name,
      'needs_permit': instance.needs_permit,
      'population': instance.population,
      'primary_economy': instance.primary_economy,
      'security': instance.security,
      'state': instance.state,
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
      'bodies': instance.bodies,
      'stations': instance.stations,
    };
