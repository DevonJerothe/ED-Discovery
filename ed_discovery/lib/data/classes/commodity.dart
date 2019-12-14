import 'package:json_annotation/json_annotation.dart';

part 'commodity.g.dart';

@JsonSerializable(nullable: true)
class Commodity {
  
  String name;
  double buy_price;
  String commodity;
  int demand;
  int sell_price;
  int supply;

  Commodity();

  factory Commodity.fromJson(Map<String, dynamic> data) =>
      _$CommodityFromJson(data);

}