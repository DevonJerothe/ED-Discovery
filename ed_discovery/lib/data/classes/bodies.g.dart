// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bodies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bodies _$BodiesFromJson(Map<String, dynamic> json) {
  return Bodies()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..type = json['type'] as String
    ..subType = json['subType'] as String
    ..distanceToArrival = json['distanceToArrival'] as int
    ..isMainStar = json['isMainStar'] as bool
    ..isScoopable = json['isScoopable'] as bool
    ..age = json['age'] as int
    ..spectralClass = json['spectralClass'] as String
    ..luminosity = json['luminosity'] as String
    ..absoluteMagnitude = (json['absoluteMagnitude'] as num)?.toDouble()
    ..solarMasses = (json['solarMasses'] as num)?.toDouble()
    ..solarRadius = (json['solarRadius'] as num)?.toDouble()
    ..surfaceTemperature = json['surfaceTemperature'] as int
    ..orbitalPeriod = (json['orbitalPeriod'] as num)?.toDouble()
    ..semiMajorAxis = (json['semiMajorAxis'] as num)?.toDouble()
    ..orbitalEccentricity = (json['orbitalEccentricity'] as num)?.toDouble()
    ..orbitalInclination = (json['orbitalInclination'] as num)?.toDouble()
    ..argOfPeriapsis = (json['argOfPeriapsis'] as num)?.toDouble()
    ..rotationalPeriod = (json['rotationalPeriod'] as num)?.toDouble()
    ..rotationalPeriodTidallyLocked =
        json['rotationalPeriodTidallyLocked'] as bool
    ..axialTilt = (json['axialTilt'] as num)?.toDouble()
    ..updateTime = json['updateTime'] as String
    ..isLandable = json['isLandable'] as bool
    ..gravity = (json['gravity'] as num)?.toDouble()
    ..earthMasses = (json['earthMasses'] as num)?.toDouble()
    ..radius = (json['radius'] as num)?.toDouble()
    ..surfacePressure = (json['surfacePressure'] as num)?.toDouble()
    ..volcanismType = json['volcanismType'] as String
    ..atmosphereType = json['atmosphereType'] as String
    ..terraformingState = json['terraformingState'] as String
    ..rings = (json['rings'] as List)
        ?.map(
            (e) => e == null ? null : Rings.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..reserveLevel = json['reserveLevel'] as String
    ..distance_to_arrival = json['distance_to_arrival'] as int
    ..edsm_id = json['edsm_id'] as int
    ..estimated_mapping_value = json['estimated_mapping_value'] as int
    ..estimated_scan_value = json['estimated_scan_value'] as int
    ..id64 = json['id64'] as int
    ..is_main_star = json['is_main_star'] as bool
    ..subtype = json['subtype'] as String
    ..terraforming_state = json['terraforming_state'] as String;
}

Map<String, dynamic> _$BodiesToJson(Bodies instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'subType': instance.subType,
      'distanceToArrival': instance.distanceToArrival,
      'isMainStar': instance.isMainStar,
      'isScoopable': instance.isScoopable,
      'age': instance.age,
      'spectralClass': instance.spectralClass,
      'luminosity': instance.luminosity,
      'absoluteMagnitude': instance.absoluteMagnitude,
      'solarMasses': instance.solarMasses,
      'solarRadius': instance.solarRadius,
      'surfaceTemperature': instance.surfaceTemperature,
      'orbitalPeriod': instance.orbitalPeriod,
      'semiMajorAxis': instance.semiMajorAxis,
      'orbitalEccentricity': instance.orbitalEccentricity,
      'orbitalInclination': instance.orbitalInclination,
      'argOfPeriapsis': instance.argOfPeriapsis,
      'rotationalPeriod': instance.rotationalPeriod,
      'rotationalPeriodTidallyLocked': instance.rotationalPeriodTidallyLocked,
      'axialTilt': instance.axialTilt,
      'updateTime': instance.updateTime,
      'isLandable': instance.isLandable,
      'gravity': instance.gravity,
      'earthMasses': instance.earthMasses,
      'radius': instance.radius,
      'surfacePressure': instance.surfacePressure,
      'volcanismType': instance.volcanismType,
      'atmosphereType': instance.atmosphereType,
      'terraformingState': instance.terraformingState,
      'rings': instance.rings,
      'reserveLevel': instance.reserveLevel,
      'distance_to_arrival': instance.distance_to_arrival,
      'edsm_id': instance.edsm_id,
      'estimated_mapping_value': instance.estimated_mapping_value,
      'estimated_scan_value': instance.estimated_scan_value,
      'id64': instance.id64,
      'is_main_star': instance.is_main_star,
      'subtype': instance.subtype,
      'terraforming_state': instance.terraforming_state,
    };

Rings _$RingsFromJson(Map<String, dynamic> json) {
  return Rings(
    name: json['name'] as String,
    type: json['type'] as String,
    innerRadius: json['innerRadius'] as int,
    mass: json['mass'] as int,
    outerRadius: json['outerRadius'] as int,
  );
}

Map<String, dynamic> _$RingsToJson(Rings instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'mass': instance.mass,
      'innerRadius': instance.innerRadius,
      'outerRadius': instance.outerRadius,
    };
