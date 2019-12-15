// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchResults.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchStationResults _$SearchStationResultsFromJson(Map<String, dynamic> json) {
  return SearchStationResults(
    json['count'] as int,
    json['from'] as int,
    (json['results'] as List)
        .map((e) => Stations.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['search_reference'] as String,
    json['size'] as int,
  );
}

Map<String, dynamic> _$SearchStationResultsToJson(
        SearchStationResults instance) =>
    <String, dynamic>{
      'count': instance.count,
      'from': instance.from,
      'results': instance.results,
      'search_reference': instance.search_reference,
      'size': instance.size,
    };

SearchSystemResults _$SearchSystemResultsFromJson(Map<String, dynamic> json) {
  return SearchSystemResults(
    json['count'] as int,
    json['from'] as int,
    (json['results'] as List)
        .map((e) => System.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['search_reference'] as String,
    json['size'] as int,
  );
}

Map<String, dynamic> _$SearchSystemResultsToJson(
        SearchSystemResults instance) =>
    <String, dynamic>{
      'count': instance.count,
      'from': instance.from,
      'results': instance.results,
      'search_reference': instance.search_reference,
      'size': instance.size,
    };
