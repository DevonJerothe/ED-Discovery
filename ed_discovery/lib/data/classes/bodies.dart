import 'package:json_annotation/json_annotation.dart';

part 'bodies.g.dart';

@JsonSerializable(nullable: true)
class Bodies {
  int id;
  String name;
  String type;
  String subType;
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
  int distance_to_arrival;
  int edsm_id;
  int estimated_mapping_value;
  int estimated_scan_value;
  int id64;
  bool is_main_star;
  String subtype;
  String terraforming_state;

  Bodies();

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


