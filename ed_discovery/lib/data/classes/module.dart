import 'package:json_annotation/json_annotation.dart';

part 'module.g.dart';

@JsonSerializable(nullable: false)
class Module {
  
  String category;
  //int class;
  String ed_symbol;
  String name;
  String rating;
  String ship;
  int mass;
  int price;

  Module();

  factory Module.fromJson(Map<String, dynamic> data) =>
      _$ModuleFromJson(data);

  
}