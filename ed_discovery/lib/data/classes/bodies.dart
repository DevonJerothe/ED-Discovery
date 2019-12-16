import 'package:json_annotation/json_annotation.dart';

part 'bodies.g.dart';

@JsonSerializable(nullable: true)
class Bodies {
  final int id;
  final String name;
  final String type;
  final String subType;
	int distanceToArrival;
	bool isMainStar;
	bool isScoopable;
	int age;
	String spectralClass;
	String luminosity;
	double absoluteMagnitude;
	double solarMasses;
	double solarRadius;
	int surfaceTemperature;
	double orbitalPeriod;
	double semiMajorAxis;
	double orbitalEccentricity;
	double orbitalInclination;
	double argOfPeriapsis;
	double rotationalPeriod;
	bool rotationalPeriodTidallyLocked;
	double axialTilt;
	String updateTime;
	bool isLandable;
	double gravity;
	double earthMasses;
	double radius;
	double surfacePressure;
	String volcanismType;
	String atmosphereType;
	String terraformingState;
	List<Rings> rings;
	String reserveLevel;

  Bodies({this.id, this.name, this.type, this.subType});

  factory Bodies.fromJson(Map<String, dynamic> data) => _$BodiesFromJson(data);
  Map<String, dynamic> toJson() => _$BodiesToJson(this);
}

@JsonSerializable()
class Rings {
  
  String name;
  String type;
  int mass; 
  int innerRadius;
  int outerRadius; 

  Rings({this.name, this.type, this.innerRadius, this.mass, this.outerRadius});

  factory Rings.fromJson(Map<String, dynamic> data) => _$RingsFromJson(data);

}


