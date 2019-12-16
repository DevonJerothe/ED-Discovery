import 'package:json_annotation/json_annotation.dart';

import 'commodity.dart';
import 'factions.dart';
import 'misc.dart';
import 'module.dart';
import 'ship.dart';

part 'stations.g.dart';

@JsonSerializable(nullable: true)
class Stations {

  String allegiance;
  String controlling_minor_faction;
  double distance;
  double distance_to_arrival;
  int edsm_id;
  List<Commodity> export_commodities;
  String government;
  bool has_large_pad;
  bool has_market;
  bool has_outfitting;
  bool has_shipyard;
  String id;
  List<Commodity> import_commodities;
  bool is_planetary;
  List<Commodity> market;
  List<Module> modules;
  String name;
  String power_state;
  String primary_economy;
  List<Commodity> prohibited_commodities;
  String secondary_economy;
  List<Misc> services;
  List<Ship> ships;
  int system_id64;
  String system_name;
  List<String> system_power;
  int system_x;
  int system_y;
  int system_z;
  String type;

  Stations();

  factory Stations.fromJson(Map<String, dynamic> data) =>
      _$StationsFromJson(data);
}