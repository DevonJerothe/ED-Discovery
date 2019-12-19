// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stations _$StationsFromJson(Map<String, dynamic> json) {
  return Stations()
    ..allegiance = json['allegiance'] as String
    ..controlling_minor_faction = json['controlling_minor_faction'] as String
    ..distance = (json['distance'] as num)?.toDouble()
    ..distance_to_arrival = (json['distance_to_arrival'] as num)?.toDouble()
    ..edsm_id = json['edsm_id'] as int
    ..export_commodities = (json['export_commodities'] as List)
        ?.map((e) =>
            e == null ? null : Commodity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..government = json['government'] as String
    ..has_large_pad = json['has_large_pad'] as bool
    ..has_market = json['has_market'] as bool
    ..has_outfitting = json['has_outfitting'] as bool
    ..has_shipyard = json['has_shipyard'] as bool
    ..id = json['id'] as String
    ..import_commodities = (json['import_commodities'] as List)
        ?.map((e) =>
            e == null ? null : Commodity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..is_planetary = json['is_planetary'] as bool
    ..market = (json['market'] as List)
        ?.map((e) =>
            e == null ? null : Commodity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..modules = (json['modules'] as List)
        ?.map((e) =>
            e == null ? null : Module.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..name = json['name'] as String
    ..power_state = json['power_state'] as String
    ..primary_economy = json['primary_economy'] as String
    ..prohibited_commodities = (json['prohibited_commodities'] as List)
        ?.map((e) =>
            e == null ? null : Commodity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..secondary_economy = json['secondary_economy'] as String
    ..services = (json['services'] as List)
        ?.map(
            (e) => e == null ? null : Misc.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..ships = (json['ships'] as List)
        ?.map(
            (e) => e == null ? null : Ship.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..system_id64 = json['system_id64'] as int
    ..system_name = json['system_name'] as String
    ..system_power =
        (json['system_power'] as List)?.map((e) => e as String)?.toList()
    ..system_x = (json['system_x'] as num)?.toDouble()
    ..system_y = (json['system_y'] as num)?.toDouble()
    ..system_z = (json['system_z'] as num)?.toDouble()
    ..type = json['type'] as String;
}

Map<String, dynamic> _$StationsToJson(Stations instance) => <String, dynamic>{
      'allegiance': instance.allegiance,
      'controlling_minor_faction': instance.controlling_minor_faction,
      'distance': instance.distance,
      'distance_to_arrival': instance.distance_to_arrival,
      'edsm_id': instance.edsm_id,
      'export_commodities': instance.export_commodities,
      'government': instance.government,
      'has_large_pad': instance.has_large_pad,
      'has_market': instance.has_market,
      'has_outfitting': instance.has_outfitting,
      'has_shipyard': instance.has_shipyard,
      'id': instance.id,
      'import_commodities': instance.import_commodities,
      'is_planetary': instance.is_planetary,
      'market': instance.market,
      'modules': instance.modules,
      'name': instance.name,
      'power_state': instance.power_state,
      'primary_economy': instance.primary_economy,
      'prohibited_commodities': instance.prohibited_commodities,
      'secondary_economy': instance.secondary_economy,
      'services': instance.services,
      'ships': instance.ships,
      'system_id64': instance.system_id64,
      'system_name': instance.system_name,
      'system_power': instance.system_power,
      'system_x': instance.system_x,
      'system_y': instance.system_y,
      'system_z': instance.system_z,
      'type': instance.type,
    };
