import 'package:json_annotation/json_annotation.dart';

import 'bodies.dart';

part 'system_info.g.dart';

@JsonSerializable(nullable: true)
class SystemInfo {
  final String name;
  final Information information;
  Bodies primaryStar;
  String permitName;
  bool requirPermit;

  SystemInfo(this.information, this.name);

  factory SystemInfo.fromJson(Map<String, dynamic> data) =>
      _$SystemInfoFromJson(data);
}

@JsonSerializable(nullable: false)
class Information {
  final String allegiance;
  final String government;
  final String faction;
  final String factionState;
  final int population;
  final String security;
  final String economy;

  Information(
      {this.allegiance,
      this.government,
      this.economy,
      this.faction,
      this.factionState,
      this.population,
      this.security});

  factory Information.fromJson(Map<String, dynamic> data) =>
      _$InformationFromJson(data);
}
