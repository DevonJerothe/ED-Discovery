import 'package:json_annotation/json_annotation.dart';

import 'bodies.dart';
import 'stations.dart';

part 'system.g.dart';

@JsonSerializable(nullable: false)
class System {
  final String name;
  final int id;
  int id64;
  String url;
  int estimatedValue;
  int estimatedValueMapped;
  int marketId;
  String sName;

  List<Bodies> bodies;
  List<Stations> stations;

  System({this.name, this.id});

  factory System.fromJson(Map<String, dynamic> data) => _$SystemFromJson(data);
  
}
