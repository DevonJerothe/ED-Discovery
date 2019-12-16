
import 'package:json_annotation/json_annotation.dart';

part 'factions.g.dart';

@JsonSerializable(nullable: true)
class Factions {

  int id;
  String name;
  String allegiance;
  String government;
  double influence;
  String state;
  bool isPlayer;

  Factions();

  factory Factions.fromJson(Map<String, dynamic> data) =>
      _$FactionsFromJson(data);
}