import 'package:json_annotation/json_annotation.dart';

part 'misc.g.dart';

@JsonSerializable(nullable: true)
class Misc {

  String name;

  Misc();

  factory Misc.fromJson(Map<String, dynamic> data) =>
      _$MiscFromJson(data);
 
  
}