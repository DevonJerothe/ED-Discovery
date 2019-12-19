import 'package:dio/dio.dart';

import '../classes/search.dart';
import '../classes/searchResults.dart';

Future<SearchSystemResults> searchSystem({String systemName}) async {
  Search searchData = new Search.fromJson({
    "filters": {
      "name": {"value": systemName}
    },
    "reference_coords": {"x": 0, "y": 0, "z": 0},
    "sort": [
      {
        "distance_from_coords": {"direction": "asc"}
      }
    ]
  });

  print(searchData.toString());

  Response response = await Dio().post(
      "https://spansh.co.uk/api/systems/search",
      data: searchData.toJson());

  final systems = new SearchSystemResults.fromJson(response.data);

  return systems;
}

Future<SearchStationResults> searchStations({String systemName}) async {
  Search search = new Search.fromJson({
    "filters": {
      "system_name": {"value": systemName}
    },
    "sort": [
      {
        "distance_from_coords": {"direction": "asc"}
      }
    ],
  });

  Response response = await Dio()
      .post("https://spansh.co.uk/api/stations/search", data: search.toJson());

  final stations = new SearchStationResults.fromJson(response.data);

  return stations;
}
