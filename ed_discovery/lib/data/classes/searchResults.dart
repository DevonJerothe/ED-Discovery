import 'package:ed_discovery/data/classes/stations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'searchResults.g.dart';

@JsonSerializable(nullable: false)
class SearchStationResults {
  final int count;
  final int from;
  final List<Stations> results;
  final String search_reference;
  final int size;

 SearchStationResults(this.count, this.from, this.results, this.search_reference, this.size);

  factory SearchStationResults.fromJson(Map<String, dynamic> data) =>
      _$SearchStationResultsFromJson(data);
  
  
}

// @JsonSerializable(nullable: false)
// class Results {

// }