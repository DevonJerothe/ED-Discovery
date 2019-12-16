import 'package:json_annotation/json_annotation.dart';

import 'bodies.dart';
import 'stations.dart';

part 'system.g.dart';

@JsonSerializable(nullable: true)
class System {
  String allegiance;
  String controlling_minor_faction;
  int distance;
  int edsm_id;
  String government;
  String id;
  int id64;
  String name;
  bool needs_permit;
  int population;
  String primary_economy;
  String security;
  String state;
  double x;
  double y;
  double z;

  List<Bodies> bodies;
  List<Stations> stations;

  System({this.stations});

  factory System.fromJson(Map<String, dynamic> data) => _$SystemFromJson(data);
  
}
