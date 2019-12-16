import 'package:json_annotation/json_annotation.dart';

part 'ship.g.dart';

@JsonSerializable(nullable: true)
class Ship {

  String name;
  int price;

  Ship();

  factory Ship.fromJson(Map<String, dynamic> data) =>
      _$ShipFromJson(data);

}