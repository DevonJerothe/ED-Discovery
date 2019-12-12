import 'package:json_annotation/json_annotation.dart';

import 'factions.dart';

part 'stations.g.dart';

@JsonSerializable(nullable: false)
class Stations {

  int id;
  String name;
  String sName;
  String type;
  int distanceToArrival;
  String allegiance;
  String government;
  String economy;
  bool haveMarket;
  bool haveShipyard;
  Factions controllingFaction;

  Stations();

  factory Stations.fromJson(Map<String, dynamic> data) =>
      _$StationsFromJson(data);
}